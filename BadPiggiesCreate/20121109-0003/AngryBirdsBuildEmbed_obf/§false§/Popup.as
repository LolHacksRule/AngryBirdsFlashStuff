package §false§
{
   import §!y§.§2U§;
   import §"!E§.§8!%§;
   import §#!4§.§'^§;
   import §5!`§.§%!Y§;
   import §5!`§.ColorFadeLayerEvent;
   import §?!-§.§'!V§;
   
   public class Popup extends §8!%§
   {
       
      
      protected const §;f§:Number = 0.25;
      
      protected var §7H§:§%!Y§;
      
      protected var §1g§:§2U§;
      
      protected var §0!D§:Boolean = false;
      
      public function Popup(param1:XML, param2:§2U§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2.container);
            if(_loc3_)
            {
               §§goto(addr45);
            }
            §§goto(addr60);
         }
         addr45:
         this.§7H§ = new §%!Y§(0,0,0,0);
         if(_loc3_ || param2)
         {
            addr60:
            param2.container.§9!k§(this);
            if(_loc3_ || param2)
            {
               this.§1g§ = param2;
            }
         }
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.open(param1);
            §'!V§.pause();
            if(_loc2_)
            {
               mClip.addChildAt(this.§7H§,0);
               if(param1)
               {
                  addr57:
                  §§push(this.§7H§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(0.7);
                     if(!(_loc3_ && param1))
                     {
                        §§pop().§#[§(§§pop(),this.§;f§);
                        addr77:
                     }
                     else
                     {
                        addr81:
                        §§pop().§@!J§(§§pop());
                     }
                     return;
                  }
                  addr80:
                  §§push(0.7);
                  §§goto(addr81);
               }
               else
               {
                  §§push(this.§7H§);
               }
               §§goto(addr80);
            }
            §§goto(addr57);
         }
         §§goto(addr77);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(!§§pop());
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§pop();
                     §§push(this.§7H§);
                     if(_loc3_ || param1)
                     {
                        addr64:
                        if(§§pop() == null)
                        {
                           if(_loc3_)
                           {
                              this.close();
                              if(_loc3_)
                              {
                                 return;
                              }
                           }
                           addr104:
                           §§push(this.§7H§);
                        }
                        else
                        {
                           §§push(this.§7H§);
                           if(!(_loc2_ && param1))
                           {
                              §§pop().§#[§(0,this.§;f§);
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr104);
                              }
                              §§goto(addr111);
                           }
                        }
                     }
                     §§pop().addEventListener(ColorFadeLayerEvent.§1!4§,this.§!!E§);
                     addr111:
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function §!!E§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§0!D§)
         {
            return;
         }
         §§push(this.§7H§);
         if(!(_loc2_ && _loc2_))
         {
            if(§§pop())
            {
               §§push(this.§7H§);
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().removeEventListener(ColorFadeLayerEvent.§1!4§,this.§!!E§);
                  if(_loc3_)
                  {
                     mClip.removeChild(this.§7H§);
                  }
                  addr65:
                  this.§7H§.clean();
                  this.§7H§ = null;
               }
               §§goto(addr65);
            }
            var _loc1_:§'^§ = this.§1g§.getItemByName("Container_Popup");
            if(!_loc2_)
            {
               if(_loc1_ != null)
               {
                  if(!_loc2_)
                  {
                     _loc1_.setVisibility(false);
                     addr85:
                     §§push(this.§1g§);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§§pop().container);
                        if(_loc3_)
                        {
                           §§goto(addr113);
                        }
                        §§pop().§@!t§(this);
                        §§goto(addr113);
                     }
                     §§goto(addr110);
                  }
                  addr113:
                  if(§§pop())
                  {
                     addr110:
                     §§push(this.§1g§.container);
                  }
                  this.§0!D§ = true;
                  if(_loc3_ || _loc1_)
                  {
                     §'!V§.resume();
                     if(_loc3_ || _loc3_)
                     {
                     }
                     §§goto(addr139);
                  }
                  mClip.dispatchEvent(new §=s§(§=s§.§>`§,this));
                  §§goto(addr139);
               }
               §§goto(addr85);
            }
            addr139:
            return;
         }
         §§goto(addr65);
      }
   }
}
