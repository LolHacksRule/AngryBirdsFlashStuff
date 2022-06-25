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
         if(_loc2_ || this)
         {
            this.§%W§ = [];
            loop0:
            while(true)
            {
               this.§1O§ = [];
               loop1:
               do
               {
                  super();
                  while(true)
                  {
                     if(!§[!W§)
                     {
                        loop3:
                        while(true)
                        {
                           §[!W§ = this;
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                           addr91:
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                        if(_loc2_ || this)
                        {
                           break;
                        }
                     }
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop1;
                     }
                  }
                  return;
               }
               while(!(_loc2_ || _loc2_));
               
               throw new Error("Can\'t create more than one instance of a singleton.");
            }
         }
         §§goto(addr91);
      }
      
      public static function get §<d§() : §2F§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §2F§)
         {
            §§push(§[!W§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §[!W§ = new §2F§();
                     addr48:
                     §§push(§[!W§);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public static function §3!-§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(!_loc7_)
            {
               if(_loc3_.indexOf(_loc4_) == -1)
               {
                  if(!(_loc7_ && §2F§))
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
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
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                  }
                  §§goto(addr50);
               }
               §§pop().push(§§pop());
               §§goto(addr50);
            }
            §§goto(addr48);
         }
         addr50:
         if(_loc3_)
         {
            addr48:
            §§push(this.§%W§);
            §§push(param1);
         }
      }
      
      public function §^!C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§%W§);
            if(_loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_ || this)
            {
               this.§&2§(_loc2_);
            }
         }
      }
      
      public function §-!M§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && _loc3_))
            {
               §§push(this.§1O§);
               if(_loc5_ || this)
               {
                  §§push(_loc2_);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr82:
                     §§push(this.§1O§);
                     §§push(_loc2_);
                  }
                  §§pop().push(§§pop());
                  continue;
               }
            }
            §§goto(addr82);
         }
      }
   }
}
