package §"§
{
   import §>^§.§!6§;
   import flash.display.Stage;
   import §throw§.§=! §;
   
   public class §]!&§
   {
       
      
      private var §&!&§:Vector.<§%!$§>;
      
      protected var §1!H§:§%!$§;
      
      private var mNextState:String;
      
      protected var §#Z§:§=! § = null;
      
      private var §8m§:Number;
      
      private var §&d§:Number;
      
      public function §]!&§(param1:§=! §)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§&!&§ = new Vector.<§%!$§>();
               while(true)
               {
                  this.§#Z§ = param1;
                  loop2:
                  while(_loc2_ || this)
                  {
                     while(true)
                     {
                        this.§8m§ = this.§#Z§.stage.stageWidth;
                        do
                        {
                           this.§&d§ = this.§#Z§.stage.stageHeight;
                        }
                        while(_loc3_ && param1);
                        
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §@n§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§1!H§);
            if(_loc1_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr43:
                     §§push(this.§1!H§.mName);
                     if(_loc1_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr62:
                     return §%!$§.§7!@§;
                  }
                  return §§pop();
               }
               §§goto(addr62);
            }
            §§goto(addr43);
         }
         §§goto(addr62);
      }
      
      public function §!!%§() : §%!$§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§1!H§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr64);
                  }
               }
               return null;
            }
            §§goto(addr64);
         }
         addr64:
         return this.§1!H§;
      }
      
      public function §0!+§(param1:String) : §%!$§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§&!&§.length)
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((this.§&!&§[_loc2_] as §%!$§).mName == param1)
            {
               §§goto(addr79);
            }
            §§goto(addr53);
         }
         if(!(_loc4_ && _loc3_))
         {
            return null;
         }
         addr79:
         return this.§&!&§[_loc2_] as §%!$§;
      }
      
      public function §?!$§(param1:String, param2:§%!$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§&!&§.length)
            {
               if(!(_loc4_ && this))
               {
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
                  addr86:
                  this.§&!&§[_loc3_] = param2;
                  while(true)
                  {
                     param2.§]!2§ = this;
                     addr64:
                     while(true)
                     {
                        addr53:
                        while(true)
                        {
                           _loc3_++;
                        }
                     }
                  }
                  addr91:
               }
               while(true)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr64);
               }
               continue;
            }
            if((this.§&!&§[_loc3_] as §%!$§).mName == param1)
            {
               §§goto(addr86);
            }
            §§goto(addr53);
         }
      }
      
      public function §'A§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mNextState = param1;
         }
      }
      
      public function get §%T§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.mNextState == §%!$§.§7!@§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §`z§() : String
      {
         return this.mNextState;
      }
      
      public function §%n§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.mNextState != §%!$§.§7!@§)
            {
               this.§;!;§(this.mNextState);
               this.setViewSize(this.§8m§,this.§&d§);
               this.mNextState = §%!$§.§7!@§;
               §§push(true);
               addr81:
            }
            else
            {
               §§push(false);
               if(_loc1_ || _loc1_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr81);
      }
      
      public function §;!;§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§%!$§ = null;
         var _loc3_:§%!$§ = null;
         for each(_loc3_ in this.§&!&§)
         {
            if(!_loc6_)
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc7_)
         {
            if(_loc2_ != null)
            {
               loop1:
               while(true)
               {
                  §§push(this.§1!H§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        if(_loc7_ || _loc3_)
                        {
                           if(_loc7_)
                           {
                              §!6§.log("deActivate state: " + this.§1!H§.mName);
                              while(true)
                              {
                                 §§push(this.§1!H§);
                                 loop4:
                                 while(true)
                                 {
                                    §§pop().deActivate();
                                    loop5:
                                    while(true)
                                    {
                                       this.previousStateDeactivate();
                                       loop6:
                                       while(!(_loc6_ && _loc2_))
                                       {
                                          §§push(this.§#Z§);
                                          while(true)
                                          {
                                             §§push(this.§1!H§);
                                             addr188:
                                             while(true)
                                             {
                                                §§pop().removeChild(§§pop().§8!2§);
                                                addr190:
                                                while(!(_loc6_ && _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      addr171:
                                                      while(true)
                                                      {
                                                         this.§1!H§ = _loc2_;
                                                         addr175:
                                                         §§goto(addr238);
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             addr147:
                                             §§push(this.§#Z§);
                                             if(!(_loc7_ || param1))
                                             {
                                                continue;
                                             }
                                             §§push(this.§1!H§);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§pop().addChildAt(§§pop().§8!2§,0);
                                                while(_loc7_)
                                                {
                                                   §§push(this.§1!H§);
                                                   loop15:
                                                   for(; !_loc6_; §§push(this.§1!H§),if(_loc7_ || _loc3_)
                                                   {
                                                      continue loop4;
                                                   })
                                                   {
                                                      §§pop().activate();
                                                      while(_loc7_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   continue loop2;
                                                   if(_loc6_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      while(!_loc6_)
                                                      {
                                                         §§goto(addr147);
                                                      }
                                                      continue loop6;
                                                      addr145:
                                                   }
                                                   §§push(true);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr175);
                                             }
                                             else
                                             {
                                                §§goto(addr188);
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    §§pop().activateComplete();
                                    if(_loc7_)
                                    {
                                       §§goto(addr84);
                                    }
                                    §§goto(addr100);
                                 }
                              }
                              addr235:
                           }
                           else
                           {
                              addr253:
                              §!6§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                           }
                           addr238:
                           while(true)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 §!6§.log("Activate state: " + this.§1!H§.mName);
                                 while(!(_loc6_ && _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 continue loop9;
                                 addr156:
                              }
                           }
                           addr238:
                           return §§pop();
                           §§push(false);
                        }
                        §§goto(addr235);
                     }
                     §§goto(addr171);
                  }
               }
            }
            §§goto(addr253);
         }
         §§goto(addr197);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §4y§(param1:§%!$§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1 != null)
            {
               do
               {
                  this.§&!&§.push(param1);
                  do
                  {
                     param1.§]!2§ = this;
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(_loc3_ && _loc2_);
               
               §§push(true);
               addr85:
            }
            else
            {
               §§push(false);
               if(_loc2_ || _loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr85);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§1!H§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr45:
                     §§push(§%!$§.§]!P§);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     return this.§1!H§.run(param1);
                  }
                  return §§pop();
               }
            }
            §§goto(addr60);
         }
         §§goto(addr45);
      }
      
      public function getAppWidth() : Number
      {
         return this.§#Z§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§#Z§.height;
      }
      
      public function get canvas() : §=! §
      {
         return this.§#Z§;
      }
      
      public function get stage() : Stage
      {
         return this.§#Z§.stage;
      }
      
      public function §]!B§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§1!H§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr82:
                     this.§1!H§.setViewSize(param1,param2);
                     addr85:
                     while(true)
                     {
                     }
                     addr85:
                  }
                  §§goto(addr85);
               }
               while(true)
               {
                  this.§8m§ = param1;
                  do
                  {
                     this.§&d§ = param2;
                  }
                  while(_loc3_ && param1);
                  
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr82);
      }
   }
}
