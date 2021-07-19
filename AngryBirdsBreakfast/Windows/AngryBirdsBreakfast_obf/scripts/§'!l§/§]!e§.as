package §'!l§
{
   public class §]!e§ implements §5A§
   {
       
      
      private var mName:String;
      
      private var §04§:Array;
      
      private var §6""§:Boolean;
      
      public function §]!e§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§04§ = [];
            while(true)
            {
               super();
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.mName = param1;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §"!=§(param1:String) : §9!#§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§9!#§ = null;
         for each(_loc2_ in this.§04§)
         {
            if(_loc5_ || param1)
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §1!u§(param1:§9!#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§"!=§(param1.name))
            {
               while(true)
               {
                  this.§04§.push(param1);
                  loop1:
                  while(_loc2_ || _loc2_)
                  {
                     while(true)
                     {
                        this.§6""§ = false;
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        addr85:
                        param1.dispose();
                     }
                     return;
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr66);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§9!#§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§04§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§04§ = [];
         }
      }
      
      public function §@u§(param1:String) : §5K§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§5K§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§04§.length)
            {
               return null;
            }
            _loc2_ = (this.§04§[_loc3_] as §9!#§).§@u§(param1);
            if(!_loc4_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(_loc4_ || _loc3_)
               {
                  break;
               }
            }
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() + 1);
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
         return _loc2_;
      }
      
      public function get §]!M§() : int
      {
         return this.§04§.length;
      }
      
      public function §-!d§(param1:int) : §9!#§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr121:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr122:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§6""§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§04§);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr74);
                                       }
                                    }
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(this.§04§);
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                       }
                                       addr74:
                                    }
                                    while(true)
                                    {
                                       if(_loc2_ && param1)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc2_)
                                       {
                                          return null;
                                          addr106:
                                       }
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          break;
                                       }
                                       this.§6""§ = true;
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue;
                                       }
                                    }
                                    continue loop0;
                                    return §§pop()[param1];
                                 }
                                 addr124:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                              addr102:
                           }
                           §§goto(addr106);
                        }
                        continue;
                     }
                     §§goto(addr124);
                  }
               }
            }
            addr120:
         }
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(this.§]!M§);
               if(_loc3_)
               {
                  §§goto(addr102);
                  §§push(§§pop() >= §§pop());
               }
               else
               {
                  §§goto(addr121);
               }
               §§goto(addr122);
            }
            else
            {
               §§goto(addr120);
            }
         }
      }
   }
}
