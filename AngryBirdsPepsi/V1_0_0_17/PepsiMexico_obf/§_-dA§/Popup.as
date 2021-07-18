package §_-dA§
{
   import §_-F1§.§_-Nk§;
   import §_-Ur§.§_-ru§;
   import §_-ox§.ColorFadeLayerEvent;
   import §_-ox§.§_-Da§;
   
   public class Popup extends §_-Nk§
   {
       
      
      private const §_-4I§:Number = 0.25;
      
      protected var §_-4W§:§_-Da§;
      
      public function Popup(param1:XML, param2:§_-ru§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super(param1,param2.container);
            if(_loc3_ || param1)
            {
               addr46:
               this.§_-4W§ = new §_-Da§(0,0,0,0);
            }
            return;
         }
         §§goto(addr46);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.open(param1);
            if(_loc2_)
            {
               mClip.addChildAt(this.§_-4W§,0);
               if(_loc2_)
               {
                  if(param1)
                  {
                     if(_loc2_)
                     {
                        addr38:
                        §§push(this.§_-4W§);
                        if(!(_loc3_ && this))
                        {
                           §§push(0.7);
                           if(_loc2_)
                           {
                              §§pop().§_-Mv§(§§pop(),this.§_-4I§);
                              if(_loc2_ || _loc2_)
                              {
                                 addr67:
                              }
                           }
                           else
                           {
                              addr71:
                              §§pop().§_-wk§(§§pop());
                           }
                           return;
                        }
                        addr70:
                        §§push(0.7);
                        §§goto(addr71);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     §§push(this.§_-4W§);
                  }
                  §§goto(addr70);
               }
               §§goto(addr67);
            }
            §§goto(addr38);
         }
         §§goto(addr67);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  addr24:
                  this.close();
                  if(_loc3_)
                  {
                     addr43:
                     §§push(this.§_-4W§);
                     if(_loc2_)
                     {
                        §§pop().§_-Mv§(0,this.§_-4I§);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr67:
                           this.§_-4W§.addEventListener(ColorFadeLayerEvent.§_-F9§,this.§_-Qw§);
                        }
                        return;
                     }
                     §§goto(addr67);
                  }
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr24);
      }
      
      private function §_-Qw§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§_-4W§.removeEventListener(ColorFadeLayerEvent.§_-F9§,this.§_-Qw§);
            if(_loc2_)
            {
               addr43:
               this.close();
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            mClip.removeChild(this.§_-4W§);
         }
      }
   }
}
