package §3C§
{
   import §"!&§.§!"7§;
   import §7!H§.AbstractPopup;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   
   public class §9!;§ extends AbstractPopup
   {
       
      
      private const §3!"§:Number = 0.25;
      
      private const §&!'§:Number = 0.7;
      
      private const §5! §:Number = 0.25;
      
      protected var §&!=§:§&"$§ = null;
      
      private var §<;§:Boolean;
      
      protected var §[>§:§5!9§;
      
      protected var §>"2§:Boolean;
      
      protected var §1"$§:Boolean;
      
      protected var §3"4§:§!"7§;
      
      public function §9!;§(param1:int, param2:int, param3:XML = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
            while(this.§&!=§ == null)
            {
               if(_loc4_ || param3)
               {
                  if(!_loc5_)
                  {
                     this.§&!=§ = new §&"$§(0,0,0,0);
                     addr70:
                     break;
                  }
                  continue;
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
         }
         loop0:
         while(this.§1"$§)
         {
            if(_loc2_ || _loc2_)
            {
               §[S§.setVisibility(false);
            }
            while(_loc2_ || _loc2_)
            {
               §[S§.mClip.scaleX = 0;
               while(!(_loc1_ && this))
               {
                  §[S§.mClip.scaleY = 0;
                  if(_loc2_ || _loc2_)
                  {
                     break loop0;
                  }
               }
            }
         }
      }
      
      override public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§>"2§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               while(true)
               {
                  §[S§.mClip.addChildAt(this.§&!=§,0);
                  addr194:
                  while(true)
                  {
                     this.§&!=§.§7t§(0.7,this.§3!"§);
                     addr167:
                     while(_loc2_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(this.§>"2§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  this.§1P§();
                  loop1:
                  for(; _loc3_ || param1; super.hide(param1,param2),if(_loc4_ && this)
                  {
                     continue;
                  },if(!_loc4_)
                  {
                     break loop0;
                  },loop2:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        addr43:
                        break loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(!(_loc4_ && param2))
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              if(!(_loc4_ && param2))
                              {
                                 §§push(this.§[>§);
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       if(§§pop() != null)
                                       {
                                          break loop1;
                                       }
                                       addr74:
                                       while(true)
                                       {
                                          this.§[>§ = §!D§.§[!1§.§1"<§(§[S§.mClip,{
                                             "scaleX":0,
                                             "scaleY":0
                                          },null,this.§5! §,§!D§.§=S§);
                                          continue loop3;
                                       }
                                    }
                                    addr139:
                                 }
                                 while(true)
                                 {
                                    §§pop().stop();
                                    addr144:
                                    while(true)
                                    {
                                       §§goto(addr74);
                                    }
                                 }
                                 addr143:
                              }
                              else
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§&!=§);
                                    if(_loc3_)
                                    {
                                       §§pop().addEventListener(ColorFadeLayerEvent.§;Y§,this.§5S§);
                                       continue loop0;
                                    }
                                    addr171:
                                    while(true)
                                    {
                                       §§pop().§7t§(0,this.§3!"§);
                                       continue loop9;
                                    }
                                 }
                                 addr175:
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr137:
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr144);
                     }
                     continue loop0;
                  })
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr143);
                  }
               }
               §§goto(addr171);
               §§push(this.§&!=§);
               while(true)
               {
                  §§push(this.§1"$§);
                  if(_loc4_ && _loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     §§goto(addr137);
                  }
                  §§goto(addr43);
               }
            }
            return;
         }
         §§goto(addr175);
      }
      
      private function §1P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§[S§.mClip == this.§&!=§.parent);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§pop();
                     addr107:
                     loop4:
                     while(true)
                     {
                        §§push(§[S§.mClip == null);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              continue loop6;
                           }
                           addr70:
                           §§push(!§§pop());
                           while(true)
                           {
                              break loop4;
                              §§goto(addr70);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(_loc1_ || _loc2_)
                           {
                              §[S§.mClip.removeChild(this.§&!=§);
                              while(true)
                              {
                                 §§goto(addr23);
                              }
                           }
                           §§goto(addr107);
                        }
                        addr23:
                        §§goto(addr55);
                     }
                  }
                  addr106:
               }
               §§goto(addr71);
            }
            §§goto(addr106);
         }
         addr55:
         while(true)
         {
            this.§&!=§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.§5S§);
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop2;
            }
            continue loop3;
         }
      }
      
      protected function §5S§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1P§();
            do
            {
               super.hide();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function updateTextFields() : void
      {
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.updateLocalization();
            do
            {
               this.updateTextFields();
            }
            while(!_loc1_);
            
         }
      }
   }
}
