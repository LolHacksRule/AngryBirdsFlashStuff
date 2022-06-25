package §8!>§
{
   import §'k§.§ >§;
   import §+!"§.§5!<§;
   import flash.utils.Dictionary;
   
   public class §`!D§
   {
      
      private static var § S§:Array;
      
      private static var §^=§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § S§ = [];
            if(!_loc1_)
            {
               §^=§ = new Dictionary();
            }
         }
      }
      
      public function §`!D§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §7G§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:§=!+§ = null;
         for(_loc2_ in param1)
         {
            if(_loc7_ || §`!D§)
            {
               if(§^=§[_loc2_])
               {
                  continue;
               }
            }
            _loc3_ = new §=!+§(param1[_loc2_],_loc2_);
            if(_loc7_ || _loc2_)
            {
               §§push(§5!<§);
               §§push("Initializing cutScene: ");
               if(_loc7_ || param1)
               {
                  §§push(§§pop() + _loc2_);
               }
               §§pop().log(§§pop());
               if(_loc7_ || _loc2_)
               {
                  §^=§[_loc2_] = _loc3_;
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
               if(§ S§.indexOf(_loc2_) >= 0)
               {
                  if(!_loc6_)
                  {
                     _loc3_.§!K§ = §=!+§.§5_§;
                  }
               }
            }
         }
      }
      
      public static function §1!3§(param1:String, param2:§ >§) : §=!+§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=!+§ = §^=§[param1];
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
      
      public static function §0!9§(param1:String) : §=!+§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=!+§ = §^=§[param1];
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
                     _loc2_.§!K§ = §=!+§.§5_§;
                  }
                  §§goto(addr85);
               }
               addr85:
               if(_loc3_ || param1)
               {
                  §§push(Boolean(§ S§.indexOf(param1)));
               }
               return _loc2_;
            }
         }
         §§goto(addr61);
      }
      
      public static function §6u§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§ S§);
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
                        § S§.push(param1);
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
