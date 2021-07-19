package §_-ls§
{
   import §_-2m§.§_-lr§;
   import §_-2m§.§_-mI§;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-rC§;
   import §_-OJ§.§_-LW§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-M7§;
   import §_-e3§.§_-54§;
   import §_-gY§.§_-Vu§;
   import §_-rQ§.§_-Ou§;
   import §_-rQ§.§_-iG§;
   
   public class §_-LR§
   {
      
      public static const §_-iQ§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-iQ§ = true;
         }
      }
      
      private var §_-Mi§:§_-M7§;
      
      private var §_-gS§:§_-2X§;
      
      private var §_-Fp§:§_-mI§;
      
      private var §_-NK§:Vector.<§_-ON§>;
      
      private var §_-AR§:Sprite;
      
      private var §_-6b§:Sprite;
      
      private var §_-Lq§:Sprite;
      
      private var §_-ND§:Number;
      
      private var §_-KO§:Number;
      
      private var §_-My§:Number;
      
      private var §_-MX§:Boolean = true;
      
      private var §_-FU§:Boolean = true;
      
      private var §_-jV§:§_-iG§;
      
      public function §_-LR§(param1:String, param2:Number, param3:§_-M7§, param4:§_-2X§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         this.§_-NK§ = new Vector.<§_-ON§>();
         super();
         this.§_-Mi§ = param3;
         this.§_-gS§ = param4;
         if(!_loc6_)
         {
            this.§_-KO§ = 0;
            this.§_-My§ = 0;
            if(!(_loc6_ && this))
            {
               this.§_-ND§ = param2;
               this.§_-AR§ = new Sprite();
               if(_loc5_)
               {
                  this.§_-6b§ = new Sprite();
                  if(!_loc6_)
                  {
                     this.§_-Lq§ = new Sprite();
                     if(!_loc5_)
                     {
                     }
                  }
                  §§goto(addr80);
               }
               this.§_-qM§(param1);
            }
         }
         addr80:
      }
      
      public function get §_-Eh§() : Boolean
      {
         return this.§_-MX§;
      }
      
      public function get §_-zm§() : Sprite
      {
         return this.§_-Lq§;
      }
      
      public function get §_-1l§() : Sprite
      {
         return this.§_-AR§;
      }
      
      public function get §_-so§() : Sprite
      {
         return this.§_-6b§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§_-1a§();
         §§push(this.§_-AR§);
         if(_loc2_ || _loc2_)
         {
            if(§§pop())
            {
               addr28:
               this.§_-AR§.dispose();
               this.§_-AR§ = null;
            }
            §§push(this.§_-6b§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  addr46:
                  this.§_-6b§.dispose();
                  this.§_-6b§ = null;
               }
               §§push(this.§_-Lq§);
               if(!(_loc1_ && this))
               {
                  if(§§pop())
                  {
                     addr69:
                     this.§_-Lq§.dispose();
                     if(!_loc1_)
                     {
                        this.§_-Lq§ = null;
                     }
                  }
                  return;
               }
               §§goto(addr69);
            }
            §§goto(addr46);
         }
         §§goto(addr28);
      }
      
      public function §_-U3§() : Boolean
      {
         return this.§_-FU§;
      }
      
      public function §_-Gf§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-FU§);
         if(!(_loc3_ && param1))
         {
            if(§§pop() == param1)
            {
               return;
            }
            this.§_-FU§ = param1;
            §§push(param1);
         }
         if(!§§pop())
         {
            this.§_-1a§();
         }
         else
         {
            this.§_-qM§(this.§_-Fp§.mName);
         }
      }
      
      public function §_-zi§() : String
      {
         return this.§_-Fp§.§_-dK§;
      }
      
      private function §_-1a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§_-6b§);
            loop1:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(_loc2_ || _loc2_)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§_-AR§);
                        while(§§pop().numChildren > 0)
                        {
                           §§push(this.§_-AR§);
                           if(!(_loc1_ && this))
                           {
                              continue loop2;
                           }
                        }
                        if(!_loc2_)
                        {
                        }
                        while(true)
                        {
                           if(this.§_-NK§.length <= 0)
                           {
                              break loop1;
                           }
                           this.§_-NK§.pop().dispose();
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                        }
                     }
                  }
                  break;
               }
               §§push(this.§_-6b§);
               if(_loc2_ || _loc1_)
               {
                  continue loop0;
               }
            }
            addr102:
            return;
         }
      }
      
      private function §_-qM§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Sprite = null;
         var _loc4_:§_-ON§ = null;
         this.§_-Fp§ = §_-lr§.§_-1U§(param1);
         if(!_loc6_)
         {
            if(this.§_-Fp§ == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr32);
               }
            }
            §§goto(addr58);
         }
         addr32:
         §_-54§.log("UNKNOWN LEVEL THEME! " + param1);
         if(!(_loc6_ && this))
         {
            param1 = "BACKGROUND_BLUE_GRASS";
            if(!(_loc6_ && param1))
            {
               this.§_-Fp§ = §_-lr§.§_-1U§("BACKGROUND_BLUE_GRASS");
               addr58:
               this.§_-AR§.y = this.§_-ND§;
               this.§_-6b§.y = this.§_-ND§;
               this.§_-Lq§.y = this.§_-ND§;
               this.§_-IM§();
            }
            §§goto(addr58);
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Fp§.§_-NK§.length)
         {
            _loc3_ = new Sprite();
            _loc4_ = new §_-ON§(this.§_-Fp§.§_-NK§[_loc2_],_loc3_,this.§_-gS§);
            if(_loc5_ || _loc2_)
            {
               this.§_-NK§.push(_loc4_);
               if(_loc5_ || param1)
               {
                  if(_loc4_.§_-MV§)
                  {
                     if(_loc6_ && param1)
                     {
                        continue;
                     }
                     addr130:
                     this.§_-6b§.addChild(_loc3_);
                     if(!_loc6_)
                     {
                        addr136:
                     }
                  }
                  else
                  {
                     this.§_-AR§.addChild(_loc3_);
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  _loc2_++;
                  continue;
               }
               §§goto(addr136);
            }
            §§goto(addr130);
         }
      }
      
      private function §_-IM§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(§_-Vu§.§_-dq§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr34:
                     §_-Vu§.§_-dq§.color = this.§_-Fp§.§_-0T§;
                  }
               }
               §§push(§§findproperty(§_-rC§));
               §§push(4096);
               §§push(4096);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(uint(0));
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§pop();
                           addr74:
                           §§push(uint(this.§_-Fp§.§_-kp§));
                        }
                     }
                  }
                  var _loc1_:§_-rC§ = new §§pop().§_-rC§(§§pop(),§§pop(),§§pop());
                  if(!_loc3_)
                  {
                     _loc1_.y = 0;
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§_-Lq§.addChild(_loc1_);
                     }
                  }
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr34);
      }
      
      public function §_-MH§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§_-1a§();
            if(_loc2_)
            {
               §_-54§.log("Switch background! NEW BACKGROUND NAME = " + param1);
               if(_loc2_)
               {
                  addr45:
                  this.§_-qM§(param1);
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function §_-o3§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-ON§ = null;
         if(_loc6_ || param1)
         {
            if(param1 == this.§_-MX§)
            {
               if(_loc6_ || _loc3_)
               {
                  return;
               }
            }
         }
         this.§_-MX§ = param1;
         for each(_loc3_ in this.§_-NK§)
         {
            if(!(_loc7_ && _loc3_))
            {
               _loc3_.§_-o3§(param1);
            }
         }
      }
      
      public function §_-o2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-jV§ = §_-Ou§.playSound(this.§_-Fp§.§_-lf§,§_-Ou§.§_-m6§,999);
         }
      }
      
      public function §_-yE§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-jV§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§_-jV§);
                     if(_loc1_)
                     {
                        if(§§pop().§_-D8§)
                        {
                           if(_loc1_ || this)
                           {
                              addr57:
                              §§push(this.§_-jV§);
                              if(_loc1_ || _loc1_)
                              {
                                 addr73:
                                 §§pop().§_-D8§.stop();
                                 §§goto(addr80);
                              }
                              §§pop().§_-py§();
                              §§goto(addr80);
                           }
                           §§goto(addr77);
                        }
                        addr80:
                        if(_loc1_)
                        {
                           addr77:
                           §§push(this.§_-jV§);
                        }
                        return;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr57);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §_-k8§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§_-AR§);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc2_ = this.§_-AR§.getChildAt(param1);
                        if(_loc4_ || _loc2_)
                        {
                           addr89:
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.visible);
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().visible = §§pop();
                              }
                           }
                        }
                        return;
                     }
                     addr77:
                     §§push(this.§_-6b§);
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() - this.§_-AR§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        addr71:
                        §§push(§§pop() - this.§_-AR§.numChildren);
                     }
                     if(§§pop() < this.§_-6b§.numChildren)
                     {
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr77);
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            this.§_-KO§ = param1;
            if(_loc6_ || param2)
            {
               this.§_-My§ = param2;
               if(_loc6_ || _loc3_)
               {
                  addr38:
                  if(this.§_-NK§ != null)
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr49:
                        _loc3_ = 0;
                        §§goto(addr51);
                     }
                     addr51:
                     do
                     {
                        if(_loc3_ < this.§_-NK§.length)
                        {
                           continue;
                        }
                     }
                     while(this.§_-NK§[_loc3_].setSideScroll(this.§_-KO§,this.§_-My§), _loc3_++, _loc6_);
                     
                     §§goto(addr166);
                  }
                  §§push(this.§_-Lq§);
                  if(_loc6_ || param2)
                  {
                     if(§§pop() != null)
                     {
                        if(!(_loc5_ && this))
                        {
                           §§push(this.§_-Lq§);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(this.§_-Lq§.scaleY = 1 / §_-LW§.§ use§);
                              if(_loc6_ || param1)
                              {
                                 §§pop().scaleX = §§pop();
                                 §§push(this.§_-Lq§);
                                 if(!_loc5_)
                                 {
                                    addr127:
                                    §§push(§_-LW§.§_-wF§);
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(-§§pop());
                                       if(_loc6_)
                                       {
                                          addr139:
                                          §§push(1 / §_-LW§.§ use§);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_ || param1)
                                             {
                                                addr158:
                                                §§pop().x = §§pop();
                                                if(!(_loc5_ && this))
                                                {
                                                   addr166:
                                                   §§goto(addr187);
                                                }
                                                §§goto(addr51);
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr158);
                                    }
                                    addr187:
                                    §§goto(addr168);
                                 }
                                 addr168:
                                 §§push(this.§_-Lq§);
                                 §§push(this.§_-ND§);
                                 if(_loc6_ || param1)
                                 {
                                    addr184:
                                    §§push(§§pop() - this.§_-My§);
                                 }
                                 §§pop().y = §§pop();
                                 return;
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr51);
                        }
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr127);
               }
               §§goto(addr49);
            }
            §§goto(addr38);
         }
         §§goto(addr49);
      }
      
      public function §_-WY§() : String
      {
         return this.§_-Fp§.mName;
      }
   }
}
