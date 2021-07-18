package §;!p§
{
   import §'"!§.§-!g§;
   import §2u§.§,6§;
   import §2u§.§]"%§;
   import §74§.§^z§;
   import flash.display.MovieClip;
   
   public class §#!N§ extends §^z§
   {
       
      
      protected var §=a§:MovieClip;
      
      protected var §^"0§:§]"%§;
      
      protected var §]!D§:§,6§;
      
      protected var §`!2§:Number;
      
      protected var §'"3§:Number;
      
      public function §#!N§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§`!2§ = this.§=a§.height;
            do
            {
               this.§'"3§ = this.§=a§.height;
               do
               {
                  super();
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc1_);
            
         }
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.data = param1;
         }
      }
      
      public function §9e§(param1:§,6§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(data)
            {
               loop0:
               while(!this.§^"0§)
               {
                  if(_loc3_)
                  {
                     this.createRovioButton(param1,param2);
                  }
                  while(_loc3_)
                  {
                     this.updateVisuals();
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           addr45:
                           break loop0;
                        }
                        addr71:
                        return;
                     }
                  }
               }
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr45);
      }
      
      public function hide(param1:§,6§) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:§,6§, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:§,6§) : void
      {
      }
      
      public function §""-§(param1:Boolean) : §]"%§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§^"0§);
                  while(true)
                  {
                     §§push(false);
                     addr112:
                     while(true)
                     {
                        §§pop().setEnabled(§§pop());
                     }
                  }
                  addr111:
               }
               loop2:
               while(true)
               {
                  §§push(this.§^"0§);
                  loop3:
                  while(true)
                  {
                     §§push(§-!g§.§+O§);
                     loop4:
                     while(true)
                     {
                        §§pop().setComponentState(§§pop());
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§^"0§);
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr76:
                                 while(true)
                                 {
                                    §§push(true);
                                    if(!_loc3_)
                                    {
                                       §§pop().setEnabled(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§push(this.§^"0§);
                                          while(_loc2_)
                                          {
                                             §§push(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§pop().setComponentState(§§pop());
                                                if(!(_loc3_ && this))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop9;
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr111);
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                              }
                              §§goto(addr39);
                           }
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(this.§^"0§);
            }
            §§goto(addr76);
         }
         §§goto(addr70);
      }
      
      override public function get height() : Number
      {
         return this.§`!2§;
      }
      
      override public function get width() : Number
      {
         return this.§'"3§;
      }
   }
}
