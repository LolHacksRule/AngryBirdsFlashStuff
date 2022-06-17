package §=#§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1#+§ extends §%#y§
   {
      
      public static const §;D§:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §]!;§:int = §;D§.length - 1;
       
      
      private var §;!?§:String;
      
      private var §6"6§:String;
      
      private var §[!R§:String;
      
      private var §`!C§:int;
      
      public function §1#+§(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§;!?§ = param2;
         this.§6"6§ = param3;
         this.§[!R§ = param6 = param6 || (param5 = param5 || §1!"§.§+$=§);
         this.§`!C§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §'">§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §]!;§)
         {
            _loc3_ = new §&!p§(§0$3§,null,false,param2,true).§%"F§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §2"O§.§`>§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §1!"§.§,!z§:
                  _loc5_ = this.§`!C§ > 0 ? Number(this.§`!C§) : Number(3);
                  break;
               case §1!"§.NORMAL:
               case §1!"§.§+$=§:
               case §1!"§.§'"O§:
                  _loc5_ = this.§`!C§ > 0 ? Number(this.§`!C§) : Number(1);
            }
         }
         else
         {
            switch(this.§[!R§)
            {
               case §1!"§.§,!z§:
                  _loc5_ = 1.5;
                  break;
               case §1!"§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §1!"§.§+$=§:
               case §1!"§.§'"O§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function §1#$§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §;D§.length)
         {
            if(§;D§[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §]!;§;
      }
      
      private function §#"T§() : void
      {
         §5#_§ = false;
         var _loc1_:int = this.§1#$§(this.§;!?§);
         §?!!§ = this.§'">§(_loc1_,§&#q§);
         addChild(§?!!§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§#"T§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§#"T§();
      }
   }
}
