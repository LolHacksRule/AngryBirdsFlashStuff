package §'!3§
{
   import §%8§.§;!=§;
   import §1!i§.AbstractPopup;
   import §1'§.§?>§;
   import §1'§.ColorFadeLayerEvent;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import flash.display.MovieClip;
   
   public class §;!o§ extends AbstractPopup
   {
       
      
      private const §,!<§:Number = 0.25;
      
      private const §"#§:Number = 0.7;
      
      private const §6m§:Number = 0.25;
      
      protected var §]!b§:§?>§ = null;
      
      private var §&!K§:Boolean;
      
      protected var §%"1§:§]W§;
      
      protected var §9p§:Boolean;
      
      protected var §]G§:Boolean;
      
      protected var §^J§:Boolean = false;
      
      protected var §@!]§:§;!=§;
      
      private var §-!;§:MovieClip;
      
      public function §;!o§(param1:int, param2:int, param3:XML = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
            loop0:
            for(; this.§]!b§ == null; while(true)
            {
               if(!(_loc4_ && this))
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!_loc5_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§]!b§ = new §?>§(0,0,0,0);
            §§goto(addr49);
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               this.§-!;§ = §29§.mClip;
               for(; this.§]G§; while(!(_loc2_ && _loc1_))
               {
                  this.§-!;§.scaleY = 0;
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               })
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
               }
               addr24:
               return;
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         while(true)
         {
            this.§-!;§.scaleX = 0;
            §§goto(addr63);
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            super.setViewSize(param1,param2);
         }
         loop0:
         for(; this.§^J§; if(_loc5_ || param1)
         {
            break;
         })
         {
            loop1:
            while(true)
            {
               §§push(0);
               loop2:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop3:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     while(true)
                     {
                        §§push(AngryBirdsCustom.§,!W§);
                        if(_loc5_ || param1)
                        {
                           if(_loc4_ && param2)
                           {
                              continue loop2;
                           }
                           §§push(0);
                           if(_loc5_ || param2)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(param1);
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§-!;§.x = (param1 - _loc3_) / 2;
                                    while(_loc5_)
                                    {
                                       this.§-!;§.y = param2 / 2;
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr43:
                              }
                              continue loop1;
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc4_)
                           {
                              §§push(§§pop() * 220);
                              if(_loc5_)
                              {
                                 addr105:
                                 §§push(Number(§§pop()));
                              }
                              if(_loc5_)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           §§goto(addr105);
                        }
                        break;
                     }
                     §§goto(addr98);
                  }
                  _loc3_ = §§pop();
                  continue loop1;
               }
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§9p§);
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               while(true)
               {
                  §29§.mClip.addChildAt(this.§]!b§,0);
                  addr225:
                  while(true)
                  {
                     this.§]!b§.§!!p§(0.7,this.§,!<§);
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§9p§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§;!K§();
                  loop1:
                  for(; _loc4_ || this; super.hide(param1,param2),if(!_loc4_)
                  {
                     continue;
                  },if(!(_loc3_ && param1))
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr124);
                  },§§goto(addr105))
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(!(_loc3_ && this))
                        {
                           continue;
                        }
                        addr165:
                        §§push(this.§]!b§);
                     }
                     else
                     {
                        while(true)
                        {
                           §§push(this.§%"1§);
                           do
                           {
                              if(§§pop() != null)
                              {
                                 break loop1;
                              }
                              loop6:
                              while(true)
                              {
                                 this.§%"1§ = §0!o§.§,2§.§4!t§(this.§-!;§,{
                                    "scaleX":0,
                                    "scaleY":0
                                 },null,this.§6m§,§0!o§.§'"6§);
                                 addr124:
                                 while(true)
                                 {
                                    §§push(this.§%"1§);
                                    if(_loc4_)
                                    {
                                       break loop6;
                                    }
                                    addr60:
                                    addr137:
                                    §§goto(addr171);
                                 }
                              }
                           }
                           while(_loc3_);
                           
                           §§pop().play();
                           addr105:
                           §§goto(addr60);
                        }
                        addr131:
                     }
                     while(true)
                     {
                        §§pop().§!!p§(0,this.§,!<§);
                        addr171:
                        addr60:
                        loop5:
                        while(true)
                        {
                           §§pop().stop();
                           addr138:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop5;
                              }
                              continue loop6;
                           }
                           continue loop11;
                        }
                        while(true)
                        {
                           do
                           {
                              §§push(this.§]!b§);
                           }
                           while(!_loc4_);
                           
                           §§pop().addEventListener(ColorFadeLayerEvent.§#!9§,this.§8?§);
                           continue loop0;
                        }
                        return;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr137);
                  }
               }
               §§goto(addr165);
            }
         }
         §§goto(addr60);
      }
      
      private function §;!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§29§.mClip == this.§]!b§.parent);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              §29§.mClip.removeChild(this.§]!b§);
                           }
                           addr81:
                        }
                        loop4:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              this.§]!b§.removeEventListener(ColorFadeLayerEvent.§#!9§,this.§8?§);
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        while(true)
                        {
                           §§push(§29§.mClip == null);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(!§§pop());
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr108);
                        }
                        addr108:
                        addr107:
                     }
                     §§goto(addr29);
                  }
                  addr77:
               }
               §§goto(addr107);
            }
         }
         §§goto(addr81);
      }
      
      protected function §8?§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;!K§();
            do
            {
               super.hide();
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function updateTextFields() : void
      {
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.updateLocalization();
         }
         do
         {
            this.updateTextFields();
         }
         while(_loc2_ && this);
         
      }
   }
}
