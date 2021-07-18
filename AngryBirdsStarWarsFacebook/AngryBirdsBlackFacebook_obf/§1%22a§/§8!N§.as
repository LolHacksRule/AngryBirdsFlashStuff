package §1"a§
{
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §8!N§ extends §;"2§
   {
       
      
      protected var §]!`§:MovieClip;
      
      protected var §;"4§:Object;
      
      public function §8!N§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.update();
            while(true)
            {
               this.§-!k§();
               addr58:
               while(_loc1_)
               {
               }
            }
         }
         while(this.§;"4§)
         {
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  this.§-!G§(false);
               }
               else
               {
                  §§goto(addr58);
               }
            }
            break;
         }
      }
      
      public function §+-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§;"4§)
            {
               while(true)
               {
                  this.§-!G§(false);
                  addr145:
                  while(true)
                  {
                  }
                  addr88:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §5!-§.visible = false;
                     addr48:
                     loop9:
                     while(_loc2_ && this)
                     {
                        while(true)
                        {
                           addChild(this.§]!`§);
                           loop4:
                           while(true)
                           {
                              this.§]!`§.addEventListener(Event.COMPLETE,this.§7D§);
                              addr81:
                              while(true)
                              {
                                 if(!(_loc1_ || this))
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr88);
                              }
                              §§goto(addr145);
                           }
                           continue loop9;
                        }
                     }
                     if(_loc1_ || _loc2_)
                     {
                        loop8:
                        while(true)
                        {
                           this.§;"4§ = data;
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 addr36:
                                 if(_loc2_ && _loc2_)
                                 {
                                    while(true)
                                    {
                                       this.§]!`§.gotoAndPlay(1);
                                       break loop8;
                                       §§goto(addr36);
                                    }
                                    addr117:
                                 }
                                 return;
                              }
                              §§goto(addr81);
                           }
                           else
                           {
                              §§goto(addr48);
                           }
                           §§goto(addr62);
                        }
                        addr62:
                        addr28:
                     }
                     while(true)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr28);
                        }
                        else
                        {
                           §§goto(addr145);
                        }
                        while(true)
                        {
                           if(this.§]!`§)
                           {
                              §§goto(addr117);
                           }
                           else
                           {
                              this.§]!`§ = new §5_§.§`"G§(this.removeAnimationClassName)();
                              §§goto(addr112);
                           }
                        }
                     }
                  }
                  addr95:
               }
            }
            §§goto(addr113);
         }
         §§goto(addr95);
      }
      
      protected function get removeAnimationClassName() : String
      {
         throw new Error("Must implement abstract method.");
      }
      
      private function §7D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-!k§();
         }
         do
         {
            this.§-!G§(true);
         }
         while(_loc3_ && this);
         
      }
      
      private function §-!G§(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&#P§ = new §&#P§(§&#P§.§-"&§,true);
         if(_loc3_ || _loc3_)
         {
            _loc2_.data = {
               "data":this.§;"4§,
               "refresh":param1
            };
            do
            {
               dispatchEvent(_loc2_);
               do
               {
                  this.§;"4§ = null;
               }
               while(_loc4_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      private function §-!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§]!`§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§]!`§.stop();
               }
               while(true)
               {
                  removeChild(this.§]!`§);
                  loop1:
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§]!`§ = null;
                     do
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     while(§5!-§.visible = true, _loc1_);
                     
                     return;
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr30);
      }
   }
}
