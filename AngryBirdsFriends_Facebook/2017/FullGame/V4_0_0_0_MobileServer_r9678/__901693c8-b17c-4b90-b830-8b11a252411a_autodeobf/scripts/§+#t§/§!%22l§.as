package §+#t§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!"l§ extends §-"3§
   {
      
      public static const §,!E§:Array = ["IMG_1","IMG_2","IMG_3","IMG_4","IMG_5","IMG_6","IMG_7","IMG_8","FB_PHOTO"];
      
      public static const §8!3§:int = §,!E§.length - 1;
       
      
      private var §@!E§:String;
      
      private var §@"z§:String;
      
      private var §"6§:String;
      
      private var §93§:int;
      
      public function §!"l§(param1:String, param2:String, param3:String, param4:Boolean = false, param5:String = null, param6:String = null, param7:int = 0)
      {
         this.§@!E§ = param2;
         this.§@"z§ = param3;
         this.§"6§ = param6 = param6 || (param5 = param5 || §5V§.§1$$§);
         this.§93§ = param7;
         super(param1,null,param4,param5);
      }
      
      private function §]!z§(param1:int, param2:String) : Sprite
      {
         var _loc3_:MovieClip = null;
         var _loc6_:§#"D§ = null;
         var _loc4_:*;
         if(_loc4_ = param1 == §8!3§)
         {
            _loc3_ = (_loc6_ = new §#"D§(§[#n§,null,false,param2,true)).§?![§();
            _loc3_.visible = true;
         }
         else
         {
            _loc3_ = new §+$#§.§["`§("LeagueProfileImage" + (param1 + 1))();
         }
         var _loc5_:Number = 1;
         if(_loc4_)
         {
            switch(param2)
            {
               case §5V§.§3"C§:
                  _loc5_ = this.§93§ > 0 ? Number(this.§93§) : Number(3);
                  break;
               case §5V§.NORMAL:
               case §5V§.§1$$§:
               case §5V§.§?!S§:
                  _loc5_ = this.§93§ > 0 ? Number(this.§93§) : Number(1);
            }
         }
         else
         {
            switch(this.§"6§)
            {
               case §5V§.§3"C§:
                  _loc5_ = 1.5;
                  break;
               case §5V§.NORMAL:
                  _loc5_ = 1;
                  break;
               case §5V§.§1$$§:
               case §5V§.§?!S§:
                  _loc5_ = 0.5;
            }
         }
         _loc3_.scaleX = _loc5_;
         _loc3_.scaleY = _loc5_;
         return _loc3_;
      }
      
      private function §'?§(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,!E§.length)
         {
            if(§,!E§[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return §8!3§;
      }
      
      private function §4"N§() : void
      {
         §8#8§ = false;
         var _loc1_:int = this.§'?§(this.§@!E§);
         §8!m§ = this.§]!z§(_loc1_,§8#=§);
         addChild(§8!m§);
      }
      
      override protected function createAvatar(param1:String) : void
      {
         this.§4"N§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§4"N§();
      }
   }
}
