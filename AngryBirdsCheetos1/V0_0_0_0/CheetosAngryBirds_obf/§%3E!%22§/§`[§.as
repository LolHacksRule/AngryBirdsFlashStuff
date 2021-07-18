package §>!"§
{
   public class §`[§
   {
      
      private static const DELIM:String = ":";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §`[§))
         {
            DELIM = ":";
         }
      }
      
      public var step:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var §0!S§:Number;
      
      public var angle:Number;
      
      public function §`[§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super();
            while(true)
            {
               this.step = param1;
               addr75:
               if(_loc7_)
               {
                  continue;
               }
               this.y = param3;
               while(true)
               {
                  this.§0!S§ = param4;
                  while(_loc6_)
                  {
                     this.angle = param5;
                     if(!(_loc6_ || param2))
                     {
                        continue;
                     }
                     addr49:
                     if(_loc6_ || param1)
                     {
                        return;
                     }
                     addr92:
                     while(!_loc7_)
                     {
                        §§goto(addr75);
                        §§goto(addr49);
                     }
                     while(true)
                     {
                        this.x = param2;
                        §§goto(addr73);
                     }
                     addr73:
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function §[I§(param1:String) : §`[§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Array = param1.split(DELIM);
         if(_loc3_)
         {
            if(_loc2_.length == 5)
            {
               if(!_loc4_)
               {
                  return new §`[§(parseInt(_loc2_[0]),parseFloat(_loc2_[1]),parseFloat(_loc2_[2]),parseFloat(_loc2_[3]),parseFloat(_loc2_[4]));
               }
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return this.step + DELIM + this.x + DELIM + this.y + DELIM + this.§0!S§ + DELIM + this.angle;
      }
   }
}
