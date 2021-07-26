package §2G§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §##W§ extends §?$3§
   {
      
      public static const §%N§:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §-"=§:int = §%N§.length - 1;
       
      
      private var §-"_§:String;
      
      private var §0##§:String;
      
      private var §3!_§:String;
      
      private var §%a§:int;
      
      public function §##W§(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§-"_§ = param2;
         this.§0##§ = param3;
         this.§3!_§ = param6 = param6 || (param5 = param5 || §?!s§.§'!n§);
         this.§%a§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §[[§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc6_:§+#]§ = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §-"=§)
         {
            _loc3_ = (_loc6_ = new §+#]§(§5"U§,null,false,param2,true)).§-!B§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §[a§.§8#k§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §?!s§.§[$0§:
                  _loc5_ = this.§%a§ > 0 ? Number(this.§%a§) : Number(3);
                  break;
               case §?!s§.NORMAL:
               case §?!s§.§'!n§:
               case §?!s§.§<"-§:
                  _loc5_ = this.§%a§ > 0 ? Number(this.§%a§) : Number(1);
            }
         }
         else
         {
            switch(this.§3!_§)
            {
               case §?!s§.§[$0§:
                  _loc5_ = 1.5;
                  break;
               case §?!s§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §?!s§.§'!n§:
               case §?!s§.§<"-§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function § !X§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §%N§.length)
         {
            if(§%N§[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §-"=§;
      }
      
      private function §>"g§() : void
      {
         §5#u§ = false;
         var _loc1_:int = this.§ !X§(this.§-"_§);
         §-!2§ = this.§[[§(_loc1_,§]#`§);
         addChild(§-!2§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§>"g§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§>"g§();
      }
   }
}
