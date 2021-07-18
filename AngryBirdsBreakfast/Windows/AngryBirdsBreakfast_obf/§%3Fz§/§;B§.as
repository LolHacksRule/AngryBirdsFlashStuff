package §?z§
{
   import §?""§.§`!o§;
   import each.§!!'§;
   import flash.display.Stage;
   
   public class §;B§
   {
       
      
      private var §'!C§:Vector.<§4!C§>;
      
      protected var §>E§:§4!C§;
      
      private var §5!4§:String;
      
      private var §7C§:String;
      
      protected var §!!U§:§`!o§ = null;
      
      private var §+q§:Number;
      
      private var §;>§:Number;
      
      public function §;B§(param1:§`!o§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§'!C§ = new Vector.<§4!C§>();
               addr50:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         loop1:
         while(true)
         {
            this.§!!U§ = param1;
            loop2:
            while(true)
            {
               this.§+q§ = this.§!!U§.stage.stageWidth;
               while(_loc3_)
               {
                  this.§;>§ = this.§!!U§.stage.stageHeight;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
                  §§goto(addr50);
               }
               continue loop1;
            }
         }
         §§goto(addr57);
      }
      
      public function §<!&§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>E§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     addr59:
                     §§push(this.§>E§.mName);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr63:
                     return §4!C§.§9!T§;
                  }
                  return §§pop();
               }
               §§goto(addr63);
            }
            §§goto(addr59);
         }
         §§goto(addr63);
      }
      
      public function §'E§() : §4!C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§>E§);
            if(_loc2_ || this)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr54);
                  }
               }
               return null;
            }
            §§goto(addr54);
         }
         addr54:
         return this.§>E§;
      }
      
      public function §+V§(param1:String) : §4!C§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§'!C§.length)
            {
               if(!_loc3_)
               {
                  return null;
               }
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((this.§'!C§[_loc2_] as §4!C§).mName == param1)
            {
               break;
            }
            §§goto(addr42);
         }
         while(_loc4_ || _loc3_);
         
         return this.§'!C§[_loc2_] as §4!C§;
      }
      
      public function §<f§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!4§ = param1;
         }
      }
      
      public function get §,=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§5!4§ == §4!C§.§9!T§);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function §,6§() : String
      {
         return this.§5!4§;
      }
      
      public function §=J§() : String
      {
         return this.§7C§;
      }
      
      public function §&!k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§5!4§ != §4!C§.§9!T§)
            {
               loop0:
               while(true)
               {
                  this.§=!V§(this.§5!4§);
                  this.setViewSize(this.§+q§,this.§;>§);
                  this.§7C§ = this.§5!4§;
                  do
                  {
                     if(_loc2_ || this)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(this.§5!4§ = §4!C§.§9!T§, _loc1_ && _loc1_);
                  
                  §§goto(addr29);
               }
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            §§goto(addr29);
         }
         addr29:
         return true;
      }
      
      public function §=!V§(param1:String) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§4!C§ = null;
         var _loc3_:§4!C§ = null;
         for each(_loc3_ in this.§'!C§)
         {
            if(!_loc8_)
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
            if(_loc2_ == null)
            {
               if(!(_loc8_ && _loc3_))
               {
                  §!!'§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                  if(!_loc8_)
                  {
                     §§push(false);
                     if(_loc7_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr76:
                     §§push(false);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc7_ || this)
                  {
                     §§push(this.§>E§);
                     loop1:
                     while(true)
                     {
                        if(§§pop() != null)
                        {
                           loop2:
                           while(true)
                           {
                              §!!'§.log("deActivate state: " + this.§>E§.mName);
                              loop3:
                              while(true)
                              {
                                 §§push(this.§>E§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop().§>!j§);
                                    addr276:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr277:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§>E§);
                                             loop8:
                                             for(; _loc7_; while(_loc7_ || this)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop1;
                                                }
                                                §§pop().deActivate();
                                                §§goto(addr247);
                                             })
                                             {
                                                §§push(false);
                                                while(true)
                                                {
                                                   §§pop().§>!j§ = §§pop();
                                                   addr271:
                                                   while(true)
                                                   {
                                                      §§push(this.§>E§);
                                                      continue loop8;
                                                   }
                                                   addr117:
                                                   §§push(_loc4_);
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().§ !#§(§§pop());
                                                   if(!_loc8_)
                                                   {
                                                      addr128:
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         addr135:
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc7_ || _loc3_))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(this.§!!U§);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(this.§>E§);
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     §§pop().addChildAt(§§pop().§#e§,0);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(this.§>E§);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§pop().activate(this.§=J§());
                                                                              addr166:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(_loc8_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr235:
                                                                                 while(true)
                                                                                 {
                                                                                    §!!'§.log("Activate state: " + this.§>E§.mName);
                                                                                    addr228:
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       this.stage.frameRate = this.§>E§.§<!%§();
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr247:
                                                                                    while(!_loc8_)
                                                                                    {
                                                                                       §§push(this.§!!U§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§>E§);
                                                                                          addr241:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().removeChild(§§pop().§#e§);
                                                                                             break loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.previousStateDeactivate();
                                                                                       §§goto(addr247);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        break;
                                                                        §§goto(addr128);
                                                                     }
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        addr231:
                                                                        while(true)
                                                                        {
                                                                           this.§>E§ = _loc2_;
                                                                           §§goto(addr235);
                                                                           continue loop23;
                                                                        }
                                                                     }
                                                                     addr198:
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr198);
                                                   }
                                                   §§goto(addr166);
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr231);
                     }
                  }
                  §§goto(addr271);
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7p§(param1:§4!C§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               this.§'!C§.push(param1);
               param1.§=z§ = this;
               §§push(true);
               addr70:
            }
            else
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§>E§);
            loop0:
            for(; §§pop(); loop2:
            while(true)
            {
               if(!(_loc3_ || _loc2_))
               {
                  continue loop0;
               }
               if(§§pop().nextState)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr77);
                     }
                     break loop0;
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     while(true)
                     {
                     }
                     addr95:
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               while(true)
               {
                  §§push(this.§>E§);
                  if(_loc3_)
                  {
                     break loop2;
                  }
                  continue loop2;
               }
            },§§push(§§pop().run(param1)),if(_loc2_ && this)
            {
               addr77:
               return §4!C§.§8s§;
            },if(_loc3_ || _loc2_)
            {
               return §§pop();
            },§§goto(addr101))
            {
               while(true)
               {
                  §§push(this.§>E§);
                  continue loop0;
               }
            }
            addr101:
            return §§pop();
            §§push(§4!C§.§-!H§);
         }
         §§goto(addr95);
      }
      
      public function getAppWidth() : Number
      {
         return this.§!!U§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§!!U§.height;
      }
      
      public function get canvas() : §`!o§
      {
         return this.§!!U§;
      }
      
      public function get stage() : Stage
      {
         return this.§!!U§.stage;
      }
      
      public function §8!U§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§>E§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr74:
                  while(true)
                  {
                     §§push(this.§>E§);
                     addr76:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr79:
                        while(true)
                        {
                        }
                     }
                  }
                  addr74:
               }
               loop0:
               while(true)
               {
                  this.§+q§ = param1;
                  while(!(_loc4_ && param2))
                  {
                     this.§;>§ = param2;
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr79);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr74);
      }
   }
}
