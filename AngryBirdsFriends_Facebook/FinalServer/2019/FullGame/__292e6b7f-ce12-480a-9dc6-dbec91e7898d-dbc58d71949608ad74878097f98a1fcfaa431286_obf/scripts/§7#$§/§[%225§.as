package §7#$§
{
   public class §["5§ extends §6"]§
   {
      
      protected static var §`#X§:Object = {};
      
      {
         §2#b§();
      }
      
      protected var §3F§:String = "";
      
      public function §["5§()
      {
         super();
      }
      
      public static function §%!B§(param1:String) : §["5§
      {
         var _loc2_:§["5§ = new §["5§();
         _loc2_.readFromLua(param1);
         return _loc2_;
      }
      
      public static function §94§(param1:String) : §["5§
      {
         var _loc2_:§["5§ = new §["5§();
         _loc2_.readDataFromJSON(param1);
         return _loc2_;
      }
      
      public static function §2$;§(param1:String) : String
      {
         return §`#X§[param1] || param1;
      }
      
      protected static function §2#b§() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function get optimalPowerup() : String
      {
         return this.§3F§;
      }
      
      public function set optimalPowerup(param1:String) : void
      {
         this.§3F§ = param1;
      }
      
      override public function readDataFromJSON(param1:String) : void
      {
         super.readDataFromJSON(param1);
         var _loc2_:Object = JSON.parse(param1);
         if(_loc2_.worldGravity)
         {
            §3"]§ = _loc2_.worldGravity;
         }
         else if(§3"]§ == 0)
         {
            §3"]§ = 20;
         }
         if(§'"`§ == 0)
         {
            §0&§ = true;
         }
         if(isNaN(§&!w§) && isNaN(§'#d§))
         {
            if(mBirds && mBirds.length > 0)
            {
               §&!w§ = mBirds[0].x;
               §'#d§ = mBirds[0].y - 8.5;
            }
         }
         var _loc3_:Number = 0;
         while(_loc3_ < §1#s§.length)
         {
            §1#s§[_loc3_].angle = §1#s§[_loc3_].angle;
            _loc3_++;
         }
         this.§3F§ = "";
         if(_loc2_.optimalPowerup)
         {
            this.§3F§ = _loc2_.optimalPowerup;
         }
         if(_loc2_.borderTop)
         {
            § #e§ = _loc2_.borderTop;
         }
         else
         {
            § #e§ = 0;
         }
         if(_loc2_.borderGround)
         {
            §;E§ = _loc2_.borderGround;
         }
         else
         {
            §;E§ = 0;
         }
         if(_loc2_.borderLeft)
         {
            §%!D§ = _loc2_.borderLeft;
         }
         else
         {
            §%!D§ = 0;
         }
         if(_loc2_.borderRight)
         {
            §8"e§ = _loc2_.borderRight;
         }
         else
         {
            §8"e§ = 0;
         }
      }
      
      override protected function readFromLua(param1:String) : void
      {
         super.readFromLua(param1);
         if(§3"]§ == 0 && §'"`§ == 0)
         {
            §3"]§ = 20;
         }
      }
      
      override public function getAsSerializableObject() : Object
      {
         var _loc1_:Object = super.getAsSerializableObject();
         _loc1_.optimalPowerup = this.optimalPowerup;
         return _loc1_;
      }
      
      override protected function convertName(param1:String) : String
      {
         return §2$;§(param1);
      }
      
      override protected function shouldIgnoreObject(param1:Object) : Boolean
      {
         return false;
      }
      
      public function §!$8§(param1:String) : Boolean
      {
         var _loc2_:Number = 0;
         while(_loc2_ < §1#s§.length)
         {
            if(§1#s§[_loc2_].type == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
   }
}
