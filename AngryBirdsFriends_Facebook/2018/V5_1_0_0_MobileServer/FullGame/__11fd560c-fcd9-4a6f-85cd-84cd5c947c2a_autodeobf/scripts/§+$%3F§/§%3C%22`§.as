package §+$?§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<"`§ extends §=#>§
   {
      
      public static const §,;§:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §8"P§:int = §,;§.length - 1;
       
      
      private var §]!a§:String;
      
      private var §]"T§:String;
      
      private var §#"[§:String;
      
      private var §,q§:int;
      
      public function §<"`§(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§]!a§ = param2;
         this.§]"T§ = param3;
         this.§#"[§ = param6 = param6 || (param5 = param5 || §4!+§.§+"N§);
         this.§,q§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §#"]§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc6_:§#"n§ = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §8"P§)
         {
            _loc3_ = (_loc6_ = new §#"n§(§["L§,null,false,param2,true)).§@#§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §!"f§.§##?§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §4!+§.§,"7§:
                  _loc5_ = this.§,q§ > 0 ? Number(this.§,q§) : Number(3);
                  break;
               case §4!+§.NORMAL:
               case §4!+§.§+"N§:
               case §4!+§.§<!j§:
                  _loc5_ = this.§,q§ > 0 ? Number(this.§,q§) : Number(1);
            }
         }
         else
         {
            switch(this.§#"[§)
            {
               case §4!+§.§,"7§:
                  _loc5_ = 1.5;
                  break;
               case §4!+§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §4!+§.§+"N§:
               case §4!+§.§<!j§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function §,!O§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,;§.length)
         {
            if(§,;§[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §8"P§;
      }
      
      private function §?#_§() : void
      {
         §=!v§ = false;
         var _loc1_:int = this.§,!O§(this.§]!a§);
         §'!,§ = this.§#"]§(_loc1_,§;!L§);
         addChild(§'!,§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§?#_§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§?#_§();
      }
   }
}
