package §+!c§
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §5" §
   {
      
      public static const § "!§:String = "normal";
      
      public static const §;"s§:String = "infinite";
      
      private static const §+"G§:int = 23;
      
      private static const §!"B§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § "!§ = "normal";
         }
         while(true)
         {
            §;"s§ = "infinite";
            while(_loc1_)
            {
               §+"G§ = 23;
               while(_loc1_)
               {
                  §!"B§ = 6;
                  if(_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §]E§:int;
      
      private var §;!m§:Boolean;
      
      private var §9">§:String;
      
      protected var §9!D§:MovieClip;
      
      protected var §3#+§:TextField;
      
      protected var §%#!§:MovieClip;
      
      public function §5" §(param1:MovieClip)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super();
            if(!_loc3_)
            {
               this.§9!D§ = param1;
               if(_loc4_)
               {
                  this.§9!D§.mouseEnabled = this.§9!D§.mouseChildren = false;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§3#+§ = this.§9!D§.counter;
                     loop5:
                     while(true)
                     {
                        this.§3#+§.autoSize = TextFieldAutoSize.CENTER;
                        addr118:
                        while(true)
                        {
                           this.§%#!§ = this.§9!D§.bg;
                           addr101:
                           while(true)
                           {
                              this.§]E§ = 0;
                              addr87:
                              while(_loc3_ && param1)
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                     addr61:
                  }
                  loop0:
                  while(true)
                  {
                     this.§;!m§ = false;
                     for(; !_loc3_; this.refresh(),if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     })
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr101);
                     §§goto(addr87);
                  }
               }
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr61);
      }
      
      public function set count(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]E§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function get count() : int
      {
         return this.§]E§;
      }
      
      public function set § "r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!m§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc2_);
         
      }
      
      public function get § "r§() : Boolean
      {
         return this.§;!m§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§9!D§.visible = param1;
         }
      }
      
      public function get visible() : Boolean
      {
         return this.§9!D§.visible;
      }
      
      protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§;!m§)
            {
               this.§3#+§.text = this.§]E§.toString();
               while(true)
               {
                  if(_loc1_)
                  {
                     this.§9!D§.gotoAndStop(§ "!§);
                     while(!_loc2_)
                     {
                        this.§9">§ = § "!§;
                        loop2:
                        while(true)
                        {
                           §§push(_loc2_ && _loc2_);
                           while(§§pop())
                           {
                              break loop2;
                           }
                           if(_loc1_ || _loc2_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 addr76:
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                                 addr76:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§9!D§.gotoAndStop(§;"s§);
                                 }
                                 addr125:
                              }
                           }
                           while(true)
                           {
                              this.§9">§ = §;"s§;
                              while(true)
                              {
                                 continue loop2;
                                 addr33:
                                 if(_loc1_ || _loc1_)
                                 {
                                    return;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  addr121:
                  while(true)
                  {
                     this.§3#+§.text = "";
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr121);
         }
         §§goto(addr76);
      }
      
      protected function §24§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(0);
         if(_loc3_ || this)
         {
            if(this.§9">§ == § "!§)
            {
               if(_loc3_ || _loc1_)
               {
                  addr113:
                  _loc1_ = Number(this.§3#+§.textWidth + 2 * §!"B§);
               }
               loop2:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§%#!§.width = _loc1_ < §+"G§ ? Number(§+"G§) : Number(_loc1_);
                     if(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     addr83:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  §§goto(addr69);
               }
               addr114:
            }
            else
            {
               §§push(Number(§+"G§));
               if(_loc3_ || this)
               {
                  _loc1_ = §§pop();
                  §§goto(addr83);
               }
               else
               {
                  §§goto(addr113);
               }
            }
            §§goto(addr113);
         }
         addr69:
      }
   }
}
