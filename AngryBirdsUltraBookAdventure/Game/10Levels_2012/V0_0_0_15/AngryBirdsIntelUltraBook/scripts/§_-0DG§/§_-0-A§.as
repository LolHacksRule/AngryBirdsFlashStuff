package §_-0DG§
{
   import §_-TG§.§_-00u§;
   import §_-eS§.§_-BK§;
   import §_-qO§.§ in§;
   import §_-z4§.Texture;
   
   public class §_-0-A§
   {
      
      public static const §_-k9§:int = 0;
      
      public static const §_-Rh§:int = 6;
      
      public static const §_-gO§:int = 7;
      
      public static const §_-AS§:int = 8;
      
      public static const §_-OZ§:int = 3;
      
      public static const §_-Zt§:int = 5;
      
      public static const §_-FB§:int = 2;
      
      public static const §_-VN§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-k9§ = 0;
         }
         loop0:
         while(true)
         {
            §_-Rh§ = 6;
            while(true)
            {
               §_-gO§ = 7;
               loop2:
               while(true)
               {
                  §_-AS§ = 8;
                  loop3:
                  while(true)
                  {
                     §_-OZ§ = 3;
                     while(true)
                     {
                        §_-Zt§ = 5;
                        while(_loc1_ || _loc2_)
                        {
                           continue loop0;
                           while(_loc1_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                              §_-VN§ = 1;
                              if(_loc1_ || _loc2_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && §_-0-A§)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
      }
      
      public var §_-o2§:String;
      
      public var §_-kD§:int;
      
      protected var §_-nH§:§_-BK§;
      
      public var §_-05k§:Number;
      
      public var §_-4k§:String;
      
      public var §_-oe§:Number = 1;
      
      public var §_-8l§:Number;
      
      private var §_-05j§:Boolean = false;
      
      private var §_-SE§:String;
      
      private var §_-nf§:int;
      
      private var §_-aw§:§_-sQ§;
      
      private var §_-jJ§:§_-au§;
      
      private var §_-xU§:§_-a2§;
      
      public function §_-0-A§(param1:String, param2:int, param3:§_-au§, param4:§_-a2§, param5:§_-sQ§, param6:int, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-o2§ = param1;
               loop1:
               while(true)
               {
                  this.§_-kD§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§_-jJ§ = param3;
                     addr76:
                     if(_loc14_)
                     {
                        continue;
                     }
                     this.§_-oe§ = 1;
                     loop13:
                     for(; !_loc14_; for(; !(_loc14_ && param2); this.§_-05k§ = param10,if(!_loc14_)
                     {
                        if(!_loc14_)
                        {
                           continue loop1;
                        }
                        loop12:
                        while(true)
                        {
                           if(_loc15_ || param2)
                           {
                              §§goto(addr76);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!_loc14_)
                                 {
                                    if(_loc14_)
                                    {
                                       break;
                                    }
                                    if(this.§_-oe§ <= 0)
                                    {
                                       continue loop12;
                                    }
                                    §§goto(addr45);
                                 }
                                 §§goto(addr121);
                                 continue loop12;
                              }
                              loop5:
                              while(true)
                              {
                                 this.§_-05j§ = param11;
                                 addr140:
                                 addr167:
                                 while(!(_loc14_ && param1))
                                 {
                                    this.§_-xU§ = param4;
                                    §§goto(addr135);
                                    break loop13;
                                 }
                                 addr174:
                                 while(!_loc14_)
                                 {
                                    this.§_-nf§ = param13;
                                    continue loop5;
                                    §§goto(addr140);
                                 }
                                 while(true)
                                 {
                                    this.§_-SE§ = param12;
                                    §§goto(addr167);
                                 }
                              }
                              addr98:
                           }
                        }
                        continue loop2;
                     })
                     {
                        addr56:
                        if(!(_loc14_ && param2))
                        {
                           continue;
                        }
                        loop8:
                        while(true)
                        {
                           this.§_-nH§ = new §_-BK§(param6);
                           addr121:
                           while(true)
                           {
                              if(!_loc14_)
                              {
                                 if(!_loc14_)
                                 {
                                    this.§_-4k§ = param7;
                                    break loop13;
                                 }
                                 continue loop0;
                              }
                              addr135:
                              while(true)
                              {
                                 this.§_-aw§ = param5;
                                 continue loop8;
                              }
                           }
                           continue loop1;
                        }
                     })
                     {
                        while(true)
                        {
                           this.§_-8l§ = param9;
                           continue loop13;
                        }
                     }
                     while(!(_loc14_ && param3))
                     {
                        this.§_-oe§ = param8;
                        §§goto(addr98);
                     }
                     §§goto(addr140);
                  }
                  if(_loc15_ || param3)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function get front() : Boolean
      {
         return this.§_-05j§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§_-SE§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§_-nf§;
      }
      
      public function §_-Kt§() : int
      {
         return this.shape.§_-0AK§();
      }
      
      public function §_-nJ§() : int
      {
         return this.shape.§_-FD§();
      }
      
      public function §_-8s§() : int
      {
         return this.shape.§_-vX§();
      }
      
      public function §_-my§() : Number
      {
         return this.§_-jJ§.getValue(§_-au§.§_-Tu§);
      }
      
      public function §_-MF§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-dp§));
      }
      
      public function §_-0-K§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-9§));
      }
      
      public function §_-GW§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-Ro§));
      }
      
      public function §_-01h§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-kd§));
      }
      
      public function §_-6R§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-lN§));
      }
      
      public function § get§() : Number
      {
         return Number(this.§_-jJ§.getValue(§_-au§.§_-078§));
      }
      
      public function §_-8o§() : int
      {
         return this.§_-05k§;
      }
      
      public function get material() : §_-au§
      {
         return this.§_-jJ§;
      }
      
      public function get shape() : §_-sQ§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         if(_loc2_)
         {
            §§push(this.§_-aw§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  _loc1_ = § in§.§_-Dc§.animationManager.getAnimation(this.§_-o2§).getFrame(0).texture;
                  addr31:
                  if(_loc2_)
                  {
                     §§push(this);
                     §§push(§§findproperty(§_-sQ§));
                     §§push(this.§_-o2§);
                     §§push("Rectangle");
                     §§push(_loc1_.width);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§_-00u§.§_-lY§);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              addr90:
                              §§push(§§pop() / 2);
                           }
                           §§push(_loc1_.height);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * §_-00u§.§_-lY§);
                              if(!_loc3_)
                              {
                                 addr101:
                                 §§push(§§pop() / 2);
                              }
                              §§pop().§_-aw§ = new §§pop().§_-sQ§(§§pop(),§§pop(),§§pop(),§§pop());
                              addr107:
                              return this.§_-aw§;
                              addr105:
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr107);
         }
         §§goto(addr31);
      }
      
      public function get §_-jf§() : §_-a2§
      {
         return this.§_-xU§;
      }
      
      public function get score() : int
      {
         return this.§_-nH§.getValue();
      }
   }
}
