package §,n§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?#!§ extends §3I§
   {
      
      public static const §@$6§:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §8"N§:int = §@$6§.length - 1;
       
      
      private var §3!Y§:String;
      
      private var §9$0§:String;
      
      private var §7!a§:String;
      
      private var §7"b§:int;
      
      public function §?#!§(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§3!Y§ = param2;
         this.§9$0§ = param3;
         this.§7!a§ = param6 = param6 || (param5 = param5 || §+!f§.§%#M§);
         this.§7"b§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §"$1§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §8"N§)
         {
            _loc3_ = new §!";§(§%"6§,null,false,param2,true).§7!b§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §@`§.§4!i§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §+!f§.§2!2§:
                  _loc5_ = this.§7"b§ > 0 ? Number(this.§7"b§) : Number(3);
                  break;
               case §+!f§.NORMAL:
               case §+!f§.§%#M§:
               case §+!f§.§`#Q§:
                  _loc5_ = this.§7"b§ > 0 ? Number(this.§7"b§) : Number(1);
            }
         }
         else
         {
            switch(this.§7!a§)
            {
               case §+!f§.§2!2§:
                  _loc5_ = 1.5;
                  break;
               case §+!f§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §+!f§.§%#M§:
               case §+!f§.§`#Q§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function §%7§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §@$6§.length)
         {
            if(§@$6§[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §8"N§;
      }
      
      private function §<#[§() : void
      {
         §;$ § = false;
         var _loc1_:int = this.§%7§(this.§3!Y§);
         §@W§ = this.§"$1§(_loc1_,§55§);
         addChild(§@W§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§<#[§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§<#[§();
      }
   }
}
