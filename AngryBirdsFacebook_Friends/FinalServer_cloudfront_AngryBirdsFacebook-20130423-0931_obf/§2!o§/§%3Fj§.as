package §2!o§
{
   import §+!c§.§;!=§;
   import §,l§.§ !Q§;
   import §,l§.§!"T§;
   import §,l§.§"6§;
   import §,l§.§#!>§;
   import §,l§.§1U§;
   import §,l§.§<"W§;
   import §;!d§.§6"L§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?j§ extends §2"3§
   {
      
      public static var §1"[§:String;
      
      public static var §?`§:Boolean = false;
      
      public static var §2U§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?`§ = false;
         }
         do
         {
            §2U§ = new Dictionary();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var §2!H§:Loader;
      
      private var §&"-§:§`2§;
      
      public function §?j§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            addEventListener(MouseEvent.CLICK,this.§""4§);
         }
      }
      
      private function §<!K§(param1:Class) : §`2§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!§2U§[param1])
            {
               if(!_loc3_)
               {
                  addr50:
                  §2U§[param1] = [];
               }
            }
            var _loc2_:Array = §2U§[param1];
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_.length == 0)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr72);
                  }
               }
               return _loc2_.pop();
            }
            addr72:
            return new param1();
         }
         §§goto(addr50);
      }
      
      private function §=I§(param1:§`2§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Class = Object(this.§&"-§).constructor;
         if(!_loc3_)
         {
            if(!§2U§[_loc2_])
            {
               if(_loc4_)
               {
                  §2U§[_loc2_] = [];
                  addr60:
                  while(true)
                  {
                  }
                  addr60:
               }
               §§goto(addr60);
            }
            while(true)
            {
               §2U§[_loc2_].push(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      private function §#o§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Class = null;
         var _loc3_:* = Object(this.§0!&§).constructor;
         if(_loc5_ || _loc3_)
         {
            if(§<"W§ === _loc3_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc5_)
                  {
                     addr90:
                  }
               }
               else
               {
                  addr125:
                  §§push(3);
                  if(_loc4_)
                  {
                  }
               }
            }
            else if(§!"T§ === _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(1);
                  if(!_loc4_)
                  {
                     §§goto(addr90);
                  }
               }
               else
               {
                  §§goto(addr125);
               }
            }
            else
            {
               if(§"6§ === _loc3_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§push(2);
                     if(_loc5_ || _loc1_)
                     {
                        addr140:
                        switch(§§pop())
                        {
                           case 0:
                              _loc1_ = §]!O§;
                              if(!(_loc4_ && this))
                              {
                                 break;
                              }
                              §§goto(addr161);
                           case 1:
                              _loc1_ = §6!6§;
                              break;
                           case 2:
                              _loc1_ = §7!Z§;
                              break;
                           case 3:
                              _loc1_ = §[!$§;
                              break;
                           case 4:
                              _loc1_ = §'"D§;
                        }
                        if(!_loc1_)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              §;!=§.log("WARNING! Unknown score item found!");
                              if(!(_loc4_ && _loc1_))
                              {
                                 addr161:
                                 return;
                              }
                           }
                        }
                        else
                        {
                           var _loc2_:Class = !!this.§&"-§ ? Object(this.§&"-§).constructor : null;
                           if(_loc5_)
                           {
                              if(_loc1_ != _loc2_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§&"-§);
                                    addr243:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             this.§=I§(removeChild(this.§&"-§) as §`2§);
                                             addr252:
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          addr244:
                                       }
                                       while(true)
                                       {
                                          this.§&"-§ = addChild(this.§<!K§(_loc1_)) as §`2§;
                                          addr235:
                                          addr237:
                                          while(!_loc5_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 addr241:
                              }
                              while(true)
                              {
                                 §§push(this.§&"-§);
                                 if(_loc5_)
                                 {
                                    §§pop().data = this.§0!&§;
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§goto(addr244);
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr243);
                                 §§goto(addr237);
                              }
                              return;
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr172);
                     }
                     else
                     {
                        addr135:
                        §§goto(addr140);
                     }
                  }
               }
               else if(§1U§ === _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr125);
                  }
               }
               else if(§ !Q§ !== _loc3_)
               {
                  §§goto(addr140);
                  §§push(5);
               }
               §§goto(addr140);
               if(!_loc4_)
               {
                  §§goto(addr135);
               }
            }
            §§goto(addr140);
         }
         §§goto(addr125);
      }
      
      private function §""4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§0!&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc2_ || this)
                           {
                              §+! §.scrollerSprite.dispatchEvent(new §6"L§(§6"L§.§ !1§,data as §#!>§));
                              addr88:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr88);
                     }
                     return;
                     addr52:
                  }
               }
               addr101:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.data = param1;
            do
            {
               this.update();
            }
            while(!_loc2_);
            
         }
      }
      
      private function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(data == null)
            {
               if(_loc2_)
               {
               }
            }
            else
            {
               this.§#o§();
            }
         }
      }
      
      public function get §0!&§() : §#!>§
      {
         return data as §#!>§;
      }
      
      public function get §!P§() : §`2§
      {
         return this.§&"-§;
      }
   }
}
