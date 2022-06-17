package §9x§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&$<§ extends § m§
   {
      
      public static const §5I§:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §0"a§:int = §5I§.length - 1;
       
      
      private var §6!4§:String;
      
      private var §^"1§:String;
      
      private var §1l§:String;
      
      private var §<#K§:int;
      
      public function §&$<§(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§6!4§ = param2;
         this.§^"1§ = param3;
         this.§1l§ = param6 = param6 || (param5 = param5 || §7",§.§1"0§);
         this.§<#K§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §2$E§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §0"a§)
         {
            _loc3_ = new §6!P§(§'H§,null,false,param2,true).§9#I§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §=@§.§9!x§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §7",§.§4$6§:
                  _loc5_ = this.§<#K§ > 0 ? Number(this.§<#K§) : Number(3);
                  break;
               case §7",§.NORMAL:
               case §7",§.§1"0§:
               case §7",§.§>z§:
                  _loc5_ = this.§<#K§ > 0 ? Number(this.§<#K§) : Number(1);
            }
         }
         else
         {
            switch(this.§1l§)
            {
               case §7",§.§4$6§:
                  _loc5_ = 1.5;
                  break;
               case §7",§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §7",§.§1"0§:
               case §7",§.§>z§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function §@]§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §5I§.length)
         {
            if(§5I§[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §0"a§;
      }
      
      private function § "6§() : void
      {
         §+"`§ = false;
         var _loc1_:int = this.§@]§(this.§6!4§);
         §&J§ = this.§2$E§(_loc1_,§ 1§);
         addChild(§&J§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§ "6§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§ "6§();
      }
   }
}
