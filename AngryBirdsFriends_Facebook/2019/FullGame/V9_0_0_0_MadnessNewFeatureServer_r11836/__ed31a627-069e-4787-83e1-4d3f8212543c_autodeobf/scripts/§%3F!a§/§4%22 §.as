package §?!a§
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4" § extends §-=§
   {
      
      public static const §9# §:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §&#d§:int = §9# §.length - 1;
       
      
      private var §7!S§:String;
      
      private var §8#C§:String;
      
      private var §<#a§:String;
      
      private var §?'§:int;
      
      public function §4" §(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§7!S§ = param2;
         this.§8#C§ = param3;
         this.§<#a§ = param6 = param6 || (param5 = param5 || §6#b§.§?^§);
         this.§?'§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §5!T§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc6_:§;!"§ = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §&#d§)
         {
            _loc3_ = (_loc6_ = new §;!"§(§1#h§,null,false,param2,true)).§3!J§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §6$A§.§1!m§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §6#b§.§[#+§:
                  _loc5_ = this.§?'§ > 0 ? Number(this.§?'§) : Number(3);
                  break;
               case §6#b§.NORMAL:
               case §6#b§.§?^§:
               case §6#b§.§""b§:
                  _loc5_ = this.§?'§ > 0 ? Number(this.§?'§) : Number(1);
            }
         }
         else
         {
            switch(this.§<#a§)
            {
               case §6#b§.§[#+§:
                  _loc5_ = 1.5;
                  break;
               case §6#b§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §6#b§.§?^§:
               case §6#b§.§""b§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function §="1§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §9# §.length)
         {
            if(§9# §[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §&#d§;
      }
      
      private function § N§() : void
      {
         §-$>§ = false;
         var _loc1_:int = this.§="1§(this.§7!S§);
         §<!]§ = this.§5!T§(_loc1_,§3$1§);
         addChild(§<!]§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§ N§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§ N§();
      }
   }
}
