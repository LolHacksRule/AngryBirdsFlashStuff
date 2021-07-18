package §>!c§
{
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §?!;§
   {
       
      
      private var §#3§:SharedObject;
      
      private var §#L§:DConsole;
      
      public const §"!H§:int = 10;
      
      public var verticalSplitRatio:§@f§;
      
      public var dockState:§@f§;
      
      public var previousCommands:§@f§;
      
      private var §%!t§:§@f§;
      
      private var _height:§@f§;
      
      private var _x:§@f§;
      
      private var _y:§@f§;
      
      private var §+#H§:int = 0;
      
      public function §?!;§(param1:DConsole)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§#L§ = param1;
               addr196:
               while(true)
               {
                  this.§#3§ = SharedObject.getLocal("consoleHistory");
                  addr54:
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
               loop8:
               while(true)
               {
                  if(_loc2_ && this)
                  {
                     continue loop0;
                  }
                  this._y = new §@f§(this.§#3§,"yPosition",0);
                  while(!(_loc2_ && param1))
                  {
                     this.§+#H§ = this.previousCommands.value.length;
                     if(_loc3_)
                     {
                        continue loop8;
                     }
                  }
                  loop5:
                  for(; _loc3_ || _loc2_; §§goto(addr71))
                  {
                     this.§%!t§ = new §@f§(this.§#3§,"width",800);
                     loop6:
                     while(_loc3_ || _loc3_)
                     {
                        this._height = new §@f§(this.§#3§,"height",13 * §>"!§.§6R§);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              this._x = new §@f§(this.§#3§,"xPosition",0);
                              continue loop8;
                           }
                           addr191:
                           while(true)
                           {
                              this.verticalSplitRatio = new §@f§(this.§#3§,"verticalSplitRatio",0.25);
                              break loop5;
                           }
                           addr45:
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              continue loop6;
                           }
                           §§goto(addr54);
                        }
                     }
                     while(true)
                     {
                        this.previousCommands = new §@f§(this.§#3§,"previousCommands",[]);
                        continue loop5;
                        §§goto(addr130);
                     }
                     addr130:
                  }
                  addr71:
                  while(true)
                  {
                     this.dockState = new §@f§(this.§#3§,"dockState",0);
                     §§goto(addr164);
                     §§goto(addr147);
                  }
                  addr147:
               }
               §§goto(addr196);
            }
         }
         §§goto(addr191);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "Persistence:\n";
         §§push(_loc1_);
         §§push("\t" + this.verticalSplitRatio);
         if(_loc2_ || this)
         {
            §§push(§§pop() + "\n");
         }
         _loc1_ = §§pop() + §§pop();
         loop0:
         while(true)
         {
            §§push(_loc1_);
            addr304:
            while(true)
            {
               §§push("\t");
               addr305:
               while(true)
               {
                  §§push(§§pop() + this.dockState);
                  addr308:
                  while(true)
                  {
                     §§push("\n");
                     addr309:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr310:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr311:
                           while(true)
                           {
                              §§push(§§pop());
                              addr312:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr313:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    addr285:
                                    while(true)
                                    {
                                       §§push("\t");
                                       addr286:
                                       while(true)
                                       {
                                          §§push(§§pop() + this.previousCommands);
                                          addr289:
                                          while(true)
                                          {
                                             §§push("\n");
                                             addr290:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr291:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr292:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr293:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get §?"i§() : Number
      {
         return this._x.value;
      }
      
      public function set §?"i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this._x.value = param1;
         }
      }
      
      public function get §^Q§() : Number
      {
         return this._y.value;
      }
      
      public function set §^Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this._y.value = param1;
         }
      }
      
      public function get §6#>§() : Number
      {
         return this.§%!t§.value;
      }
      
      public function set §6#>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!t§.value = param1;
         }
      }
      
      public function get §-1§() : Number
      {
         return this._height.value;
      }
      
      public function set §-1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this._height.value = param1;
         }
      }
      
      public function get rect() : Rectangle
      {
         return new Rectangle(this.§?"i§,this.§^Q§,this.§6#>§,this.§-1§);
      }
      
      public function §&#<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.previousCommands.§0!t§();
         }
      }
      
      public function clearAll() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this._x.§0!t§();
            loop0:
            while(true)
            {
               this._y.§0!t§();
               while(true)
               {
                  this.previousCommands.§0!t§();
                  loop2:
                  while(true)
                  {
                     this.dockState.§0!t§();
                     while(true)
                     {
                        this.verticalSplitRatio.§0!t§();
                        loop4:
                        while(true)
                        {
                           this.§%!t§.§0!t§();
                           while(!_loc2_)
                           {
                              continue loop0;
                              while(_loc1_ || _loc2_)
                              {
                                 this.§+#H§ = 0;
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this._height.§0!t§();
            §§goto(addr55);
         }
         §§goto(addr40);
      }
      
      public function §-#8§() : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Array = this.previousCommands.value;
         if(_loc3_)
         {
            if(_loc1_.length > 0)
            {
               if(!_loc4_)
               {
                  this.§+#H§ = Math.max(this.§+#H§ = this.§+#H§ - 1,0);
                  if(!_loc4_)
                  {
                     §§goto(addr65);
                  }
               }
            }
            return "";
         }
         addr65:
         return _loc1_[this.§+#H§];
      }
      
      public function §set §() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = this.previousCommands.value;
         if(_loc4_)
         {
            if(this.§+#H§ < _loc1_.length - 1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§+#H§ = Math.min(this.§+#H§ = this.§+#H§ + 1,_loc1_.length - 1);
                  if(!_loc3_)
                  {
                     return _loc1_[this.§+#H§];
                  }
               }
               while(true)
               {
                  §§goto(addr73);
               }
            }
            addr73:
            §§goto(addr94);
         }
         addr94:
         while(true)
         {
            this.§+#H§ = _loc1_.length;
            if(!(_loc3_ && this))
            {
               break;
            }
            continue loop0;
         }
         return "";
      }
      
      public function §&!4§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Array = this.previousCommands.value;
         if(!(_loc3_ && param1))
         {
            if(_loc2_[_loc2_.length - 1] != param1)
            {
               loop0:
               while(true)
               {
                  _loc2_.push(param1);
                  loop1:
                  while(true)
                  {
                     if(_loc2_.length <= this.§"!H§)
                     {
                        while(true)
                        {
                           this.§+#H§ = _loc2_.length;
                           if(_loc4_ || this)
                           {
                              addr57:
                              if(!(_loc3_ && _loc3_))
                              {
                                 break;
                              }
                              addr71:
                              while(true)
                              {
                                 _loc2_.shift();
                                 §§goto(addr57);
                              }
                           }
                           while(!(_loc3_ && _loc3_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return true;
                        addr35:
                        addr64:
                     }
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr35);
         }
         §§goto(addr64);
      }
   }
}
