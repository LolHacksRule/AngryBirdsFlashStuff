package §]2§
{
   import §<o§.§7!1§;
   import §@,§.§4h§;
   import flash.display.Stage;
   
   public class §%!B§
   {
       
      
      private var §'Z§:Vector.<§[4§>;
      
      protected var §0!B§:§[4§;
      
      private var mNextState:String;
      
      protected var §;0§:§7!1§ = null;
      
      private var §3i§:Number;
      
      private var §&!=§:Number;
      
      public function §%!B§(param1:§7!1§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§'Z§ = new Vector.<§[4§>();
               loop1:
               while(true)
               {
                  this.§;0§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§3i§ = this.§;0§.stage.stageWidth;
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§&!=§ = this.§;0§.stage.stageHeight;
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr67);
      }
      
      public function §6!T§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0!B§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr49:
                     §§push(this.§0!B§.mName);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr68:
                     return §[4§.§=!D§;
                  }
                  return §§pop();
               }
               §§goto(addr68);
            }
         }
         §§goto(addr49);
      }
      
      public function §2! §() : §[4§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0!B§);
            if(!(_loc1_ && this))
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr54);
                  }
               }
               return null;
            }
            §§goto(addr54);
         }
         addr54:
         return this.§0!B§;
      }
      
      public function §&>§(param1:String) : §[4§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§'Z§.length)
            {
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               loop2:
               while(!(_loc4_ || param1))
               {
                  while(true)
                  {
                     continue loop2;
                  }
               }
               continue;
               addr49:
            }
            else if((this.§'Z§[_loc2_] as §[4§).mName == param1)
            {
               if(_loc4_ || _loc2_)
               {
                  return this.§'Z§[_loc2_] as §[4§;
               }
               §§goto(addr92);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr49);
            }
         }
         return null;
      }
      
      public function §[!K§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.mNextState = param1;
         }
      }
      
      public function get §0n§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.mNextState == §[4§.§=!D§);
         if(!(_loc1_ && this))
         {
            return !§§pop();
         }
      }
      
      public function §2y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.mNextState != §[4§.§=!D§)
            {
               this.§3C§(this.mNextState);
               this.setViewSize(this.§3i§,this.§&!=§);
               do
               {
                  this.mNextState = §[4§.§=!D§;
               }
               while(!(_loc1_ || this));
               
               §§push(true);
               addr96:
            }
            else
            {
               §§push(false);
               if(_loc1_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr96);
      }
      
      public function §3C§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§[4§ = null;
         var _loc3_:§[4§ = null;
         for each(_loc3_ in this.§'Z§)
         {
            if(_loc7_ || this)
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
               while(true)
               {
                  §§push(this.§0!B§);
                  loop2:
                  while(true)
                  {
                     if(§§pop() != null)
                     {
                        loop3:
                        while(true)
                        {
                           §4h§.log("deActivate state: " + this.§0!B§.mName);
                           while(true)
                           {
                              §§push(this.§0!B§);
                              while(true)
                              {
                                 §§pop().deActivate();
                                 addr205:
                                 while(!(_loc6_ && param1))
                                 {
                                    this.previousStateDeactivate();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§;0§);
                                       addr185:
                                       while(true)
                                       {
                                          §§push(this.§0!B§);
                                          addr187:
                                          addr174:
                                          while(true)
                                          {
                                             §§pop().removeChild(§§pop().§9!A§);
                                             §§goto(addr189);
                                          }
                                          §§push(this.§;0§);
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§push(this.§0!B§);
                                             if(_loc6_)
                                             {
                                                §§goto(addr187);
                                             }
                                             §§pop().addChildAt(§§pop().§9!A§,0);
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                                 loop15:
                                 for(; _loc7_ || _loc3_; §§push(this.§0!B§),if(!(_loc7_ || param1))
                                 {
                                    continue;
                                 },if(_loc6_ && _loc3_)
                                 {
                                    continue loop2;
                                 },§§pop().activateComplete(),if(_loc6_)
                                 {
                                    §§goto(addr127);
                                 },§§goto(addr84))
                                 {
                                    §§pop().activate();
                                    while(_loc7_ || this)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop15;
                                       }
                                       §§goto(addr205);
                                    }
                                    addr189:
                                    while(true)
                                    {
                                       if(_loc6_ && _loc2_)
                                       {
                                          addr243:
                                          §4h§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
                                          break;
                                       }
                                    }
                                    addr248:
                                    return false;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§0!B§ = _loc2_;
                        §§goto(addr179);
                     }
                     §§goto(addr105);
                  }
               }
            }
         }
         §§goto(addr243);
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §6'§(param1:§[4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != null)
            {
               do
               {
                  this.§'Z§.push(param1);
                  param1.§[!U§ = this;
               }
               while(!_loc3_);
               
               §§push(true);
               addr75:
            }
            else
            {
               §§push(false);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      public function updateState(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§0!B§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(§[4§.§^Z§);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr61:
                     return this.§0!B§.run(param1);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr61);
      }
      
      public function getAppWidth() : Number
      {
         return this.§;0§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§;0§.height;
      }
      
      public function get canvas() : §7!1§
      {
         return this.§;0§;
      }
      
      public function get stage() : Stage
      {
         return this.§;0§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§0!B§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§0!B§);
                     addr86:
                     while(true)
                     {
                        §§pop().setViewSize(param1,param2);
                        addr89:
                        while(true)
                        {
                        }
                     }
                     addr56:
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     this.§&!=§ = param2;
                     addr63:
                     if(!(_loc3_ || param1))
                     {
                        while(!(_loc4_ && param1))
                        {
                           §§goto(addr56);
                           §§goto(addr63);
                        }
                        §§goto(addr89);
                        addr49:
                     }
                     return;
                     addr34:
                  }
               }
               while(true)
               {
                  this.§3i§ = param1;
                  §§goto(addr49);
                  §§goto(addr89);
               }
            }
            §§goto(addr86);
         }
         §§goto(addr34);
      }
   }
}
