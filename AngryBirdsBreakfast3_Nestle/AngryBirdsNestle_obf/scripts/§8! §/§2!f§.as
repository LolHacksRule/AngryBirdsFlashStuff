package §8! §
{
   public class §2!f§ implements §+C§
   {
       
      
      private var mName:String;
      
      private var §<`§:Array;
      
      private var §4G§:Boolean;
      
      public function §2!f§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<`§ = [];
         }
         while(true)
         {
            super();
            while(_loc2_)
            {
               this.mName = param1;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §null§(param1:String) : §9q§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9q§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§<`§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc6_ || _loc2_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function §^",§(param1:§9q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§null§(param1.name))
            {
               if(_loc3_ || _loc2_)
               {
                  param1.dispose();
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  this.§<`§.push(param1);
                  loop1:
                  while(_loc3_ || _loc2_)
                  {
                     while(true)
                     {
                        this.§4G§ = false;
                        if(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§9q§ = null;
         for each(_loc1_ in this.§<`§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§<`§ = [];
         }
      }
      
      public function §8e§(param1:String) : §^"-§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^"-§ = null;
         var _loc3_:* = Number(0);
         for(; _loc3_ < this.§<`§.length; _loc3_ = §§pop())
         {
            _loc2_ = (this.§<`§[_loc3_] as §9q§).§8e§(param1);
            if(_loc5_)
            {
               if(_loc2_ != null)
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + 1);
               if(!_loc5_)
               {
                  continue;
               }
            }
            §§push(Number(§§pop()));
         }
         return null;
      }
      
      public function get §8!h§() : int
      {
         return this.§<`§.length;
      }
      
      public function §!!-§(param1:int) : §9q§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                              }
                              addr118:
                           }
                           addr44:
                           addr95:
                           loop8:
                           while(true)
                           {
                              §§push(this.§4G§);
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§<`§);
                                       addr74:
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          loop11:
                                          while(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             while(true)
                                             {
                                                this.§4G§ = true;
                                                if(!_loc3_)
                                                {
                                                   continue loop11;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue loop9;
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§<`§);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr74);
                                 }
                                 return §§pop()[param1];
                              }
                           }
                           while(_loc3_ || param1)
                           {
                              continue loop6;
                              §§goto(addr44);
                           }
                           continue loop2;
                        }
                        return null;
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
   }
}
