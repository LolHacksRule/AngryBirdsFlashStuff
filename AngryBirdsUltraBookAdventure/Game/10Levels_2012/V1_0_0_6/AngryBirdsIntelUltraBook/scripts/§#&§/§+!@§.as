package §#&§
{
   public class §+!@§
   {
      
      private static var §6@§:§+!@§;
       
      
      private var §1?§:Array;
      
      private var §8!'§:Array;
      
      public function §+!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1?§ = [];
            while(true)
            {
               this.§8!'§ = [];
               while(!(_loc1_ && _loc2_))
               {
                  super();
                  loop2:
                  for(; _loc2_ || this; if(_loc2_ || _loc1_)
                  {
                     return;
                  })
                  {
                     if(§6@§)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           throw new Error("Can\'t create more than one instance of a singleton.");
                           addr68:
                        }
                        loop3:
                        while(true)
                        {
                           addr29:
                           while(true)
                           {
                              §6@§ = this;
                              if(_loc2_ || this)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr29);
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function get §7!j§() : §+!@§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§6@§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && §+!@§))
                  {
                     §6@§ = new §+!@§();
                     addr54:
                     §§push(§6@§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public static function §%b§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc7_ || param1)
            {
               if(_loc3_.indexOf(_loc4_) == -1)
               {
                  if(!_loc8_)
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function §"4§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1?§);
            if(!(_loc2_ && this))
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr69:
                        this.§1?§.push(param1);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §`!v§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1?§);
            if(_loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §§pop();
                           addr74:
                           return this.§8!'§.indexOf(param1) == -1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §+!i§(param1:String) : Boolean
      {
         return this.§8!'§.indexOf(param1) == -1;
      }
      
      public function §;o§(param1:String) : Boolean
      {
         return this.§8!'§.indexOf(param1) == -1;
      }
      
      public function §#!T§() : Array
      {
         return this.§1?§;
      }
      
      public function §]<§() : Array
      {
         return this.§8!'§;
      }
      
      public function §6t§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc5_ || _loc2_)
            {
               this.§"4§(_loc2_);
            }
         }
      }
      
      public function §@!$§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               continue;
            }
            §§push(this.§8!'§);
            if(!_loc5_)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     continue;
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  addr73:
                  §§push(this.§8!'§);
                  §§push(_loc2_);
               }
               §§pop().push(§§pop());
               continue;
            }
            §§goto(addr73);
         }
      }
   }
}
