module KittensHelper
    def kitten_author(kitten)
        user_signed_in? && current_user.id == kitten.user_id
    end
end
