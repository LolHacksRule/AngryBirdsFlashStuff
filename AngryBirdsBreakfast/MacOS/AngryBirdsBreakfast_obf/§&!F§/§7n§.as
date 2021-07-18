package §&!F§
{
   import §,L§.§%J§;
   import §-!u§.§2u§;
   import §0"$§.§"!a§;
   import §0"$§.§;§;
   import flash.display.MovieClip;
   
   public class §7n§ extends §2u§
   {
       
      
      protected var §'!#§:MovieClip;
      
      protected var §4!H§:§;§;
      
      protected var §<!J§:§"!a§;
      
      protected var §implements§:Number;
      
      protected var §-r§:Number;
      
      public function §7n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§implements§ = this.§'!#§.height;
         }
         do
         {
            this.§-r§ = this.§'!#§.height;
            do
            {
               super();
            }
            while(_loc2_ && this);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.data = param1;
         }
      }
      
      public function §<!m§(param1:§"!a§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(data)
            {
               while(!this.§4!H§)
               {
                  loop1:
                  while(true)
                  {
                     this.createRovioButton(param1,param2);
                     while(!(_loc4_ && param2))
                     {
                        this.updateVisuals();
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr76);
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               return;
            }
         }
         addr76:
      }
      
      public function hide(param1:§"!a§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§"!a§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§"!a§) : void
      {
      }
      
      public function §+!6§(param1:Boolean) : §;§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  §§push(this.§4!H§);
                  while(true)
                  {
                     §§push(false);
                     addr98:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop());
                     }
                  }
                  addr97:
               }
               loop2:
               while(true)
               {
                  §§push(this.§4!H§);
                  loop3:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        §§push(§%J§.§2!r§);
                        loop4:
                        while(true)
                        {
                           §§pop().setComponentState(§§pop());
                           addr78:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 addr20:
                                 addr38:
                                 while(true)
                                 {
                                    §§push(this.§4!H§);
                                    if(_loc2_ && param1)
                                    {
                                       break;
                                    }
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop3;
                                 }
                                 while(!_loc2_)
                                 {
                                    continue loop4;
                                    §§goto(addr20);
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                     else
                     {
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr98);
               }
            }
            else
            {
               §§push(this.§4!H§);
            }
            while(true)
            {
               §§push(true);
               if(_loc3_)
               {
                  §§pop().setEnabled(§§pop());
                  §§goto(addr69);
               }
               §§goto(addr98);
            }
         }
         §§goto(addr80);
      }
      
      override public function get height() : Number
      {
         return this.§implements§;
      }
      
      override public function get width() : Number
      {
         return this.§-r§;
      }
   }
}
