package §6!M§
{
   public class §2F§
   {
      
      private static var §[!W§:§2F§;
       
      
      private var §%W§:Array;
      
      private var §1O§:Array;
      
      public function §2F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%W§ = [];
            loop0:
            do
            {
               this.§1O§ = [];
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(§[!W§)
                        {
                           if(_loc2_ || _loc1_)
                           {
                              continue;
                           }
                           addr74:
                           while(true)
                           {
                              break loop2;
                           }
                        }
                        break;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     §[!W§ = this;
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr74);
                  }
                  continue loop0;
               }
            }
            while(_loc1_);
            
            return;
         }
         throw new Error("Can\'t create more than one instance of a singleton.");
      }
      
      public static function get §<d§() : §2F§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§[!W§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || §2F§)
                  {
                     addr39:
                     §[!W§ = new §2F§();
                  }
               }
               return §[!W§;
            }
         }
         §§goto(addr39);
      }
      
      public static function §3!-§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc8_ || _loc3_)
            {
               if(_loc3_.indexOf(_loc4_) != -1)
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue;
               }
            }
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function §&2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%W§);
            if(!_loc2_)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     if(!(_loc2_ && this))
                     {
                        addr54:
                        this.§%W§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §^!C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§%W§);
            if(!_loc2_)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           addr74:
                           return this.§1O§.indexOf(param1) == -1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §5!>§(param1:String) : Boolean
      {
         return this.§1O§.indexOf(param1) == -1;
      }
      
      public function §9K§(param1:String) : Boolean
      {
         return this.§1O§.indexOf(param1) == -1;
      }
      
      public function §+y§() : Array
      {
         return this.§%W§;
      }
      
      public function §;;§() : Array
      {
         return this.§1O§;
      }
      
      public function §`!c§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc5_)
            {
               this.§&2§(_loc2_);
            }
         }
      }
      
      public function §-!M§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(_loc6_ || _loc2_)
            {
               §§push(this.§1O§);
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                     addr78:
                     §§push(this.§1O§);
                     §§push(_loc2_);
                  }
                  §§pop().push(§§pop());
                  continue;
               }
            }
            §§goto(addr78);
         }
      }
   }
}
