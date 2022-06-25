package §;!B§
{
   import §-!F§.§&!A§;
   import §5H§.§[k§;
   import §87§.§<8§;
   import §87§.ColorFadeLayerEvent;
   import §<!G§.§^3§;
   import §class§.§0r§;
   
   public class Popup extends §0r§
   {
       
      
      protected const §?o§:Number = 0.25;
      
      protected var §<!4§:§<8§;
      
      protected var §8l§:§^3§;
      
      protected var §%!?§:Boolean = false;
      
      public function Popup(param1:XML, param2:§^3§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2.container);
            if(_loc3_ || param1)
            {
               §§goto(addr50);
            }
            §§goto(addr60);
         }
         addr50:
         this.§<!4§ = new §<8§(0,0,0,0);
         if(_loc3_)
         {
            addr60:
            param2.container.§5'§(this);
            if(!(_loc4_ && param2))
            {
               this.§8l§ = param2;
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
         super.open(param1);
         §[k§.pause();
         mClip.addChildAt(this.§<!4§,0);
         if(param1)
         {
            if(_loc2_ || param1)
            {
               §§push(this.§<!4§);
               if(!(_loc3_ && param1))
               {
                  §§push(0.7);
                  if(_loc2_)
                  {
                     §§pop().§4J§(§§pop(),this.§?o§);
                     addr70:
                  }
                  else
                  {
                     addr74:
                     §§pop().§?n§(§§pop());
                  }
                  return;
               }
               addr73:
               §§push(0.7);
               §§goto(addr74);
            }
            §§goto(addr70);
         }
         else
         {
            §§push(this.§<!4§);
         }
         §§goto(addr73);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr61);
               }
            }
            addr54:
            §§pop();
            §§push(this.§<!4§);
            if(_loc3_)
            {
               addr61:
               if(§§pop() == null)
               {
                  if(_loc3_ || this)
                  {
                     this.close();
                  }
                  return;
               }
               §§push(this.§<!4§);
               if(_loc3_)
               {
                  §§pop().§4J§(0,this.§?o§);
                  §§goto(addr106);
               }
            }
            §§pop().addEventListener(ColorFadeLayerEvent.§9a§,this.§''§);
            §§goto(addr106);
         }
         addr106:
         if(_loc3_ || _loc2_)
         {
            §§push(this.§<!4§);
         }
      }
      
      protected function §''§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§%!?§)
         {
            return;
         }
         §§push(this.§<!4§);
         if(_loc3_ || _loc3_)
         {
            if(§§pop())
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.§<!4§);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().removeEventListener(ColorFadeLayerEvent.§9a§,this.§''§);
                     if(_loc3_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr84);
               }
               addr61:
               mClip.removeChild(this.§<!4§);
               if(!(_loc2_ && _loc3_))
               {
                  addr84:
                  this.§<!4§.clean();
                  addr82:
                  if(_loc2_ && _loc3_)
                  {
                  }
                  §§goto(addr95);
               }
               this.§<!4§ = null;
               addr95:
               var _loc1_:§&!A§ = this.§8l§.getItemByName("Container_Popup");
               if(_loc3_)
               {
                  if(_loc1_ != null)
                  {
                     _loc1_.setVisibility(false);
                     if(_loc3_ || this)
                     {
                        addr116:
                        §§push(this.§8l§);
                        if(_loc3_)
                        {
                           §§push(§§pop().container);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 addr137:
                                 this.§8l§.container.§!E§(this);
                                 addr136:
                                 if(_loc3_ || _loc2_)
                                 {
                                 }
                                 §§goto(addr158);
                              }
                              this.§%!?§ = true;
                              §§goto(addr149);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr116);
               }
               addr149:
               §[k§.resume();
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr158);
               }
               addr158:
               mClip.dispatchEvent(new §7$§(§7$§.§^O§,this));
               return;
            }
         }
         §§goto(addr84);
      }
   }
}
