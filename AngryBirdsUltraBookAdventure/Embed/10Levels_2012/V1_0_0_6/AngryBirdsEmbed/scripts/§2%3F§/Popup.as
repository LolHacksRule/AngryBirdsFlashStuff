package §2?§
{
   import §'o§.ColorFadeLayerEvent;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §4C§.§'!D§;
   import §`!0§.§4Y§;
   
   public class Popup extends §'!D§
   {
       
      
      protected const §"R§:Number = 0.25;
      
      protected var §=@§:§`K§;
      
      protected var § -§:§0#§;
      
      protected var §1B§:Boolean = false;
      
      public function Popup(param1:XML, param2:§0#§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2.container);
            if(_loc4_ || this)
            {
               this.§=@§ = new §`K§(0,0,0,0);
               if(!(_loc3_ && this))
               {
                  §§goto(addr71);
               }
               §§goto(addr82);
            }
         }
         addr71:
         param2.container.§^!I§(this);
         if(_loc4_ || param1)
         {
            addr82:
            this.§ -§ = param2;
         }
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         super.open(param1);
         if(!(_loc2_ && param1))
         {
            §"h§.pause();
            mClip.addChildAt(this.§=@§,0);
            if(!_loc2_)
            {
               if(param1)
               {
                  addr58:
                  §§push(this.§=@§);
                  if(_loc3_)
                  {
                     §§push(0.7);
                     if(_loc3_)
                     {
                        §§pop().§?`§(§§pop(),this.§"R§);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr74:
                        §§pop().§!!6§(§§pop());
                     }
                     return;
                  }
                  addr73:
                  §§push(0.7);
                  §§goto(addr74);
               }
               else
               {
                  §§push(this.§=@§);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr58);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(!§§pop());
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
                  if(_loc3_ && _loc2_)
                  {
                  }
                  addr65:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        this.close();
                        if(!_loc3_)
                        {
                           §§goto(addr72);
                        }
                        else
                        {
                           addr90:
                           §§push(this.§=@§);
                           if(!_loc3_)
                           {
                              §§pop().§?`§(0,this.§"R§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr107:
                                 this.§=@§.addEventListener(ColorFadeLayerEvent.§&Y§,this.§6P§);
                              }
                              return;
                           }
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr90);
               }
               §§goto(addr65);
            }
            §§pop();
            if(_loc2_)
            {
               §§push(this.§=@§);
               if(_loc2_ || this)
               {
                  §§goto(addr65);
                  §§push(§§pop() == null);
               }
               §§goto(addr107);
            }
            addr72:
            return;
         }
         §§goto(addr65);
      }
      
      protected function §6P§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§1B§)
            {
               return;
            }
            §§push(this.§=@§);
            if(_loc3_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§=@§);
                     if(_loc3_)
                     {
                        §§pop().removeEventListener(ColorFadeLayerEvent.§&Y§,this.§6P§);
                        if(_loc3_ || this)
                        {
                           mClip.removeChild(this.§=@§);
                           if(_loc3_ || this)
                           {
                           }
                           addr80:
                           var _loc1_:§4Y§ = this.§ -§.getItemByName("Container_Popup");
                           if(!_loc2_)
                           {
                              if(_loc1_ != null)
                              {
                                 addr91:
                                 _loc1_.setVisibility(false);
                              }
                              §§push(this.§ -§);
                              if(!(_loc2_ && this))
                              {
                                 §§push(§§pop().container);
                                 if(!(_loc2_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          this.§ -§.container.§9K§(this);
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr117);
                              }
                              addr117:
                              if(_loc3_ || this)
                              {
                                 addr136:
                                 this.§1B§ = true;
                                 if(_loc3_)
                                 {
                                    §"h§.resume();
                                    if(_loc2_ && _loc3_)
                                    {
                                    }
                                    §§goto(addr157);
                                 }
                                 mClip.dispatchEvent(new §;!#§(§;!#§.§'A§,this));
                              }
                              addr157:
                              return;
                           }
                           §§goto(addr91);
                        }
                        addr76:
                        this.§=@§.clean();
                        this.§=@§ = null;
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr76);
         }
         §§goto(addr76);
      }
   }
}
