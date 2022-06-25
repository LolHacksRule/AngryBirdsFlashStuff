package §#!"§
{
   import §"x§.§-8§;
   import §#&§.§35§;
   import §#&§.§9!o§;
   import §#&§.§]!B§;
   import §#&§.§`S§;
   import §7@§.§4C§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §"U§ extends §[!'§
   {
      
      public static var §7!2§:String;
      
      public static var §"!i§:Boolean = false;
      
      public static var §6!6§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §"U§))
         {
            §"!i§ = false;
            do
            {
               §6!6§ = new Dictionary();
            }
            while(!_loc2_);
            
         }
      }
      
      private var §`!a§:Loader;
      
      private var §<!G§:§+M§;
      
      public function §"U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.init();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§4!§);
         }
      }
      
      private function §@!u§(param1:Class) : §+M§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!§6!6§[param1])
            {
               if(!(_loc3_ && this))
               {
                  addr50:
                  §6!6§[param1] = [];
               }
            }
            var _loc2_:Array = §6!6§[param1];
            if(_loc4_)
            {
               if(_loc2_.length == 0)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr67);
                  }
               }
               return _loc2_.pop();
            }
            addr67:
            return new param1();
         }
         §§goto(addr50);
      }
      
      private function §>Q§(param1:§+M§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Class = Object(this.§<!G§).constructor;
         if(!_loc4_)
         {
            if(!§6!6§[_loc2_])
            {
               if(_loc3_ || this)
               {
                  §6!6§[_loc2_] = [];
                  addr79:
                  while(true)
                  {
                  }
                  addr79:
               }
               §§goto(addr79);
            }
            while(true)
            {
               §6!6§[_loc2_].push(param1);
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function §<!P§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§5N§).constructor;
         if(_loc4_)
         {
            if(§9!o§ === _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     addr81:
                  }
               }
               else
               {
                  addr78:
                  §§push(2);
                  if(!_loc5_)
                  {
                     §§goto(addr81);
                  }
               }
               addr96:
               switch(§§pop())
               {
                  case 0:
                     _loc1_ = §;V§;
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr107:
                     §-8§.log("WARNING! Unknown score item found!");
                     if(!_loc5_)
                     {
                        return;
                     }
                     addr132:
                     var _loc2_:Class = Object(this.§<!G§).constructor;
                     addr123:
                     if(_loc4_)
                     {
                        if(_loc1_ != _loc2_)
                        {
                           while(true)
                           {
                              §§push(this.§<!G§);
                              addr187:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       this.§>Q§(removeChild(this.§<!G§) as §+M§);
                                       addr203:
                                       while(true)
                                       {
                                       }
                                       addr203:
                                    }
                                    §§goto(addr203);
                                 }
                                 while(true)
                                 {
                                    this.§<!G§ = addChild(this.§@!u§(_loc1_)) as §+M§;
                                    addr181:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr185:
                        }
                        while(true)
                        {
                           §§push(this.§<!G§);
                           if(_loc4_)
                           {
                              §§pop().data = this.§5N§;
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr187);
                        }
                        return;
                     }
                     §§goto(addr203);
                     break;
                  case 1:
                     _loc1_ = §5!W§;
                     break;
                  case 2:
                     _loc1_ = §%s§;
               }
               if(!_loc1_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr107);
                  }
               }
               else
               {
                  if(this.§<!G§)
                  {
                     §§goto(addr123);
                  }
                  else
                  {
                     §§push(null);
                  }
                  §§goto(addr132);
               }
               §§goto(addr132);
            }
            else
            {
               if(§]!B§ === _loc3_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(1);
                     if(!_loc4_)
                     {
                        §§goto(addr81);
                     }
                  }
                  else
                  {
                     §§goto(addr78);
                  }
               }
               else if(§35§ === _loc3_)
               {
                  §§goto(addr78);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr96);
            }
         }
         §§goto(addr78);
      }
      
      private function §4!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§5N§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §#G§.scrollerSprite.dispatchEvent(new §4C§(§4C§.§,>§,data as §`S§));
                        }
                        if(_loc3_ || param1)
                        {
                           addr79:
                           break;
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
               addr92:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(!_loc3_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(data == null)
            {
               if(_loc2_ || this)
               {
                  addr29:
               }
            }
            else
            {
               this.§<!P§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function get §5N§() : §`S§
      {
         return data as §`S§;
      }
   }
}
