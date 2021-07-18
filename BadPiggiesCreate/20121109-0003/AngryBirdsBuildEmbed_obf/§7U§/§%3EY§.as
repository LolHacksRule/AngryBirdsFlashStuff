package §7U§
{
   public class §>Y§ implements §?!R§
   {
       
      
      private var §7!"§:Array;
      
      private var §7!1§:Boolean;
      
      public function §>Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7!"§ = [];
            if(_loc2_)
            {
               super();
            }
         }
      }
      
      public function § !n§(param1:§`L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§7!"§.push(param1);
            if(_loc2_)
            {
               this.§7!1§ = false;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`L§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§7!"§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§7!"§ = [];
         }
      }
      
      public function §@g§(param1:String) : §@!4§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§@!4§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§7!"§.length)
            {
               return null;
            }
            _loc2_ = (this.§7!"§[_loc3_] as §`L§).§@g§(param1);
            if(_loc5_ || _loc2_)
            {
               if(_loc2_ != null)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  continue;
               }
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() + 1);
                  if(_loc5_)
                  {
                     addr92:
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
                  continue;
               }
               §§goto(addr92);
            }
            break;
         }
         return _loc2_;
      }
      
      public function get §0!@§() : int
      {
         return this.§7!"§.length;
      }
      
      public function §0g§(param1:int) : §`L§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(0);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           addr51:
                           §§pop();
                           §§push(param1 >= this.§0!@§);
                           if(_loc2_ || _loc2_)
                           {
                              addr73:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    return null;
                                 }
                                 §§goto(addr81);
                              }
                              else
                              {
                                 addr80:
                                 if(!this.§7!1§)
                                 {
                                    addr81:
                                    §§push(this.§7!"§);
                                    if(_loc2_)
                                    {
                                       §§pop().sortOn("name");
                                       if(_loc2_)
                                       {
                                          this.§7!1§ = true;
                                          addr92:
                                          §§push(this.§7!"§);
                                       }
                                       §§goto(addr92);
                                    }
                                    return §§pop()[param1];
                                 }
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr80);
                        }
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         §§goto(addr51);
      }
   }
}
