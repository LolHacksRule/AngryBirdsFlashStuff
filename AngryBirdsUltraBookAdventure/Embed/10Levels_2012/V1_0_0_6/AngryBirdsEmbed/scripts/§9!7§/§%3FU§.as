package §9!7§
{
   import §5`§.§?y§;
   import §>K§.§9X§;
   import flash.utils.Dictionary;
   
   public class §?U§
   {
      
      private static var §`!B§:Array;
      
      private static var §!y§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`!B§ = [];
            if(!_loc1_)
            {
               §!y§ = new Dictionary();
            }
         }
      }
      
      public function §?U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §;%§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§ !A§ = null;
         for(_loc2_ in param1)
         {
            if(_loc7_ || §?U§)
            {
               if(§!y§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new § !A§(param1[_loc2_],_loc2_);
            if(_loc7_ || _loc2_)
            {
               §§push(§9X§);
               §§push("Initializing cutScene: ");
               if(_loc7_ || param1)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               if(_loc7_ || _loc2_)
               {
                  §!y§[_loc2_] = _loc3_;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               if(§`!B§.indexOf(_loc2_) >= 0)
               {
                  if(!_loc6_)
                  {
                     _loc3_.§+g§ = § !A§.§!1§;
                  }
               }
            }
         }
      }
      
      public static function §var §(param1:String, param2:§?y§) : § !A§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ !A§ = §!y§[param1];
         if(!(_loc4_ && param1))
         {
            if(_loc3_)
            {
               addr41:
               _loc3_ = _loc3_.clone(param2);
            }
            return _loc3_;
         }
         §§goto(addr41);
      }
      
      public static function §&n§(param1:String) : § !A§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ !A§ = §!y§[param1];
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(_loc2_));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr61:
                     §§pop();
                     §§goto(addr85);
                  }
               }
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc2_.§+g§ = § !A§.§!1§;
                  }
                  §§goto(addr85);
               }
               addr85:
               if(_loc3_ || param1)
               {
                  §§push(Boolean(§`!B§.indexOf(param1)));
               }
               return _loc2_;
            }
         }
         §§goto(addr61);
      }
      
      public static function §try §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§`!B§);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) < 0)
                  {
                     if(!_loc3_)
                     {
                        addr31:
                        §`!B§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr31);
      }
   }
}
