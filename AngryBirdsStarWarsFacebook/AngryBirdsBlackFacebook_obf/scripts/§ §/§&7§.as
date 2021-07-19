package § §#8
{
   import §0!=§.§'"]§;
   import §5t§.Log;
   import flash.display.Stage;
   
   public class §&7§
   {
       
      
      private var §="o§:Vector.<§4#`§>;
      
      protected var §2A§:§4#`§;
      
      private var §+0§:String;
      
      private var §%#1§:String;
      
      protected var §["A§:§'"]§ = null;
      
      private var §+"p§:Number;
      
      private var §?!"§:Number;
      
      public function §&7§(param1:§'"]§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§="o§ = new Vector.<§4#`§>();
               do
               {
                  this.§["A§ = param1;
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
      
      public function §]?§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§2A§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     addr49:
                     §§push(this.§2A§.mName);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr53:
                     return §4#`§.§"l§;
                  }
                  return §§pop();
               }
               §§goto(addr53);
            }
         }
         §§goto(addr49);
      }
      
      public function §@!2§() : §4#`§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§2A§);
            if(!(_loc2_ && this))
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     §§push(this.§2A§);
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         addr59:
         return null;
      }
      
      public function §<#+§(param1:String) : §4#`§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§="o§.length)
            {
               if(_loc3_)
               {
                  return null;
               }
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if((this.§="o§[_loc2_] as §4#`§).mName == param1)
            {
               break;
            }
            §§goto(addr41);
         }
         while(_loc3_);
         
         return this.§="o§[_loc2_] as §4#`§;
      }
      
      public function §<"P§(param1:String, param2:Class) : §4#`§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§4#`§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§="o§.length)
         {
            if((this.§="o§[_loc3_] as §4#`§).mName == param1)
            {
               if(_loc5_)
               {
                  _loc4_ = this.§[#P§(param2);
                  if(_loc5_)
                  {
                     this.§="o§[_loc3_] = _loc4_;
                  }
                  _loc4_.§!;§ = this;
                  return _loc4_;
               }
               break;
            }
            _loc3_++;
            if(_loc6_ && param2)
            {
               break;
            }
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function §[#P§(param1:Class) : §4#`§
      {
         return new param1();
      }
      
      public function § g§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+0§ = param1;
         }
      }
      
      public function get §6m§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§+0§ == §4#`§.§"l§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function §3"C§() : String
      {
         return this.§+0§;
      }
      
      public function §,u§() : String
      {
         return this.§%#1§;
      }
      
      public function §'"s§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§+0§ != §4#`§.§"l§)
            {
               if(_loc1_ || this)
               {
                  addr100:
                  this.§,W§(this.§+0§);
               }
               while(true)
               {
                  this.setViewSize(this.§+"p§,this.§?!"§);
                  while(true)
                  {
                     this.§%#1§ = this.§+0§;
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     this.§+0§ = §4#`§.§"l§;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr33);
                  }
               }
            }
            else
            {
               §§push(false);
               if(_loc1_)
               {
                  return §§pop();
               }
            }
            addr33:
            return true;
         }
         §§goto(addr100);
      }
      
      public function §,W§(param1:String) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§4#`§ = null;
         var _loc3_:§4#`§ = null;
         for each(_loc3_ in this.§="o§)
         {
            if(_loc8_ || _loc3_)
            {
               if(_loc3_.mName != param1)
               {
                  continue;
               }
            }
            _loc2_ = _loc3_;
         }
         if(_loc8_)
         {
            if(_loc2_ == null)
            {
               if(_loc8_)
               {
                  addr61:
                  Log.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                  if(_loc8_ || _loc2_)
                  {
                     addr73:
                     §§push(false);
                     if(!(_loc7_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr82:
                     §§push(false);
                  }
                  var _loc4_:* = §§pop();
                  if(!_loc7_)
                  {
                     §§push(this.§2A§);
                     loop1:
                     while(true)
                     {
                        if(§§pop() != null)
                        {
                           loop9:
                           while(true)
                           {
                              Log.log("deActivate state: " + this.§2A§.mName);
                              addr296:
                              while(true)
                              {
                                 §§push(this.§2A§);
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop().skipTransition);
                                    if(!_loc7_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          §§push(this.§2A§);
                                          continue loop11;
                                          addr220:
                                          if(!(_loc7_ && this))
                                          {
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 continue loop9;
                              }
                           }
                           addr289:
                        }
                        while(true)
                        {
                           this.§2A§ = _loc2_;
                           loop3:
                           while(true)
                           {
                              Log.log("Activate state: " + this.§2A§.mName);
                              loop4:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc8_)
                                    {
                                       this.stage.frameRate = this.§2A§.§[#^§();
                                       while(true)
                                       {
                                          §§push(this.§["A§);
                                          if(!_loc7_)
                                          {
                                             §§push(this.§2A§);
                                             if(!_loc7_)
                                             {
                                                §§pop().addChildAt(§§pop().§%G§,0);
                                                continue loop4;
                                             }
                                             §§goto(addr216);
                                          }
                                          break;
                                       }
                                       §§goto(addr214);
                                       addr192:
                                    }
                                    break;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr296);
                           }
                           §§goto(addr234);
                        }
                     }
                  }
                  §§goto(addr289);
               }
               §§goto(addr73);
            }
            §§goto(addr82);
         }
         §§goto(addr61);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7![§(param1:§4#`§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1 != null)
            {
               this.§="o§.push(param1);
               param1.§!;§ = this;
               return true;
            }
            else
            {
               addr24:
               §§push(false);
               if(_loc2_ || _loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§2A§);
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§2A§);
                     loop2:
                     while(true)
                     {
                        if(§§pop().nextState)
                        {
                           if(_loc2_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr66);
                              }
                              else
                              {
                                 addr90:
                              }
                              §§goto(addr88);
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(this.§2A§);
                           if(_loc2_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
               addr88:
               return §4#`§.§"#8§;
            }
            while(_loc3_ && this);
            
            §§push(§§pop().run(param1));
            if(_loc3_)
            {
               addr66:
               return §4#`§.§-#_§;
            }
            if(!_loc3_)
            {
               return §§pop();
            }
            §§goto(addr90);
         }
         §§goto(addr84);
      }
      
      public function getAppWidth() : Number
      {
         return this.§["A§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§["A§.height;
      }
      
      public function get canvas() : §'"]§
      {
         return this.§["A§;
      }
      
      public function get stage() : Stage
      {
         return this.§["A§.stage;
      }
      
      public function §&"4§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§2A§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr82:
                     this.§2A§.setViewSize(param1,param2);
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
                  this.§+"p§ = param1;
                  do
                  {
                     this.§?!"§ = param2;
                  }
                  while(_loc3_);
                  
                  if(!(_loc3_ && this))
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
