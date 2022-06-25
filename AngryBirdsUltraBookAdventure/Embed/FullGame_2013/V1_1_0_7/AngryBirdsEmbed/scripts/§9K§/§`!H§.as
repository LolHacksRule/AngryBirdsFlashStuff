package §9K§
{
   import §7W§.§'!-§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §`!H§ extends EventDispatcher
   {
       
      
      private var §1p§:String = "";
      
      private var §6!-§:String;
      
      private var §64§:URLLoader;
      
      private var §`_§:Dictionary;
      
      private var §0l§:String = null;
      
      private var §<!&§:String = null;
      
      private var §8@§:String = null;
      
      private var §0A§:Boolean;
      
      private var §9!4§:§'!-§;
      
      private var §-M§:§5!H§;
      
      private var §]!6§:Vector.<§5!H§>;
      
      private var §<"§:String = "pak";
      
      private var §87§:Boolean = true;
      
      private var §#!F§:int = 1;
      
      public function §`!H§(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§`_§ = new Dictionary();
         this.§]!6§ = new Vector.<§5!H§>();
         if(_loc6_)
         {
            super();
            this.§1p§ = param2;
            if(_loc6_ || param1)
            {
               this.§6!-§ = param1;
               this.§87§ = param3;
               this.§#!F§ = Math.max(1,param4);
            }
         }
      }
      
      public function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function §[<§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§`_§[param1] == null);
         if(!(_loc3_ && param1))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      private function §[!9§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§5!H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!6§.length)
         {
            _loc3_ = this.§]!6§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§-M§ = _loc3_;
               this.§0l§ = param1;
               this.§]!6§.splice(_loc2_,1);
               this.§]!6§.unshift(this.§-M§);
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function §9I§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop().toLowerCase());
               if(_loc2_)
               {
                  param1 = §§pop();
                  if(this.§!!E§())
                  {
                     if(_loc2_)
                     {
                        if(!this.§,§())
                        {
                           if(_loc2_)
                           {
                              §§goto(addr46);
                           }
                           else
                           {
                              addr71:
                              §§push(param1 == this.§0l§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr82:
                                 if(!§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop();
                                       if(!(_loc3_ && this))
                                       {
                                          §§push(this.§87§);
                                          if(!(_loc3_ && this))
                                          {
                                             addr114:
                                             if(!§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   dispatchEvent(new Event(Event.COMPLETE));
                                                }
                                                addr130:
                                             }
                                             else
                                             {
                                                this.§[!8§(param1,false);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr130);
                                                }
                                             }
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                              }
                              §§goto(addr114);
                           }
                        }
                        else
                        {
                           addr62:
                           §§push(this.§[<§(param1));
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 this.§[!9§(param1);
                                 §§goto(addr71);
                              }
                              else
                              {
                                 this.§,&§(param1);
                              }
                              addr134:
                              return;
                           }
                        }
                        §§goto(addr82);
                     }
                     addr46:
                     this.§8@§ = param1;
                     return;
                  }
                  §§goto(addr62);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr62);
      }
      
      protected function §,&§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = "";
         if(_loc4_)
         {
            §§push(this.§1p§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() == null);
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           addr50:
                           §§pop();
                           §§goto(addr156);
                        }
                     }
                     if(§§pop())
                     {
                        §§push("?version=");
                        if(_loc4_)
                        {
                           §§push(§§pop() + this.§1p§);
                        }
                        §§push(§§pop());
                        if(_loc4_ || param1)
                        {
                           _loc2_ = §§pop();
                           if(!(_loc5_ && param1))
                           {
                              addr96:
                              this.§<!&§ = param1;
                              this.§64§ = new URLLoader();
                              if(_loc4_ || _loc2_)
                              {
                                 this.§64§.dataFormat = URLLoaderDataFormat.BINARY;
                                 this.§64§.addEventListener(Event.COMPLETE,this.onComplete);
                              }
                              this.§64§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                              this.§64§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           }
                           §§push(this.§1L§(param1));
                           if(_loc4_ || _loc2_)
                           {
                              addr156:
                              §§goto(addr157);
                           }
                        }
                        addr157:
                        §§goto(addr51);
                     }
                     §§goto(addr96);
                  }
               }
            }
            §§goto(addr50);
         }
         addr51:
         §§push(this.§1p§);
         if(!(_loc5_ && this))
         {
            §§push(§§pop().length > 0);
         }
         var _loc3_:String = §§pop();
         if(_loc4_ || param1)
         {
            this.§64§.load(new URLRequest(_loc3_ + _loc2_));
         }
      }
      
      protected function §1L§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§6!-§);
            if(_loc3_)
            {
               §§push(§§pop());
               if(!(_loc4_ && param1))
               {
                  addr40:
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        addr54:
                        §§pop();
                        addr56:
                        §§push("");
                     }
                     var _loc2_:* = §§pop();
                     §§push(_loc2_ + "packages/");
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_)
                           {
                           }
                           §§goto(addr81);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     addr81:
                     §§push(§§pop() + ".");
                     if(!_loc4_)
                     {
                        §§push(this.§<"§);
                     }
                     return §§pop();
                  }
                  §§goto(addr56);
               }
               §§goto(addr54);
            }
            §§goto(addr40);
         }
         §§goto(addr54);
      }
      
      private function §!!E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(Boolean(this.§64§));
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop();
                     addr49:
                     §§push(this.§0A§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      private function §,§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§64§)
            {
               this.§64§.removeEventListener(Event.COMPLETE,this.onComplete);
               this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               this.§64§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               addr43:
               if(_loc1_)
               {
                  this.§64§.close();
                  this.§64§ = null;
                  §§goto(addr75);
               }
               §§goto(addr86);
            }
            addr75:
            §§push(this.§0A§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(false);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr86:
                     §§push(true);
                  }
               }
               §§goto(addr86);
            }
            return §§pop();
         }
         §§goto(addr43);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§64§.removeEventListener(Event.COMPLETE,this.onComplete);
            if(!(_loc3_ && _loc3_))
            {
               this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               if(!(_loc3_ && _loc3_))
               {
                  this.§64§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  this.§`_§[this.§<!&§] = this.§64§.data;
                  if(_loc3_ && _loc3_)
                  {
                  }
                  addr103:
                  this.§[!8§(this.§<!&§,true);
                  §§goto(addr108);
               }
               this.§64§ = null;
               if(_loc2_ || _loc2_)
               {
               }
               addr108:
               return;
            }
         }
         §§goto(addr103);
      }
      
      private function §[!8§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§5!H§ = null;
         if(!_loc5_)
         {
            this.§0A§ = true;
            if(!(_loc5_ && param1))
            {
               this.§<!&§ = param1;
            }
         }
         while(this.§]!6§.length >= this.§#!F§)
         {
            _loc3_ = this.§]!6§.pop();
            if(!(_loc5_ && _loc3_))
            {
               _loc3_.dispose();
            }
         }
         if(_loc4_ || param2)
         {
            §§push(this.§9!4§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  addr78:
                  §§push(this.§9!4§);
                  if(_loc4_)
                  {
                     §§pop().dispose();
                     addr83:
                     this.§-M§ = new §5!H§(param1);
                     if(_loc4_ || param1)
                     {
                        this.§]!6§.unshift(this.§-M§);
                        this.§9!4§ = new §'!-§();
                        if(!_loc5_)
                        {
                           §§push(this.§9!4§);
                           if(!_loc5_)
                           {
                              addr120:
                              §§pop().addEventListener(Event.COMPLETE,this.§2!N§);
                              addr125:
                              §§push(this.§9!4§);
                              if(_loc4_ || param2)
                              {
                                 §§pop().§^X§(this.§<!&§);
                              }
                           }
                           §§goto(addr139);
                        }
                        addr139:
                        §§pop().§+X§(this.§`_§[this.§<!&§],param2);
                        return;
                        §§push(this.§9!4§);
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr83);
            }
            §§goto(addr120);
         }
         §§goto(addr78);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§64§.removeEventListener(Event.COMPLETE,this.onComplete);
            if(_loc3_)
            {
               this.§64§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               this.§64§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               if(_loc3_ || _loc3_)
               {
                  this.§64§.close();
                  addr72:
                  this.§64§ = null;
                  if(_loc3_)
                  {
                     addr77:
                     this.§<!&§ = null;
                     if(_loc3_)
                     {
                        dispatchEvent(new Event(Event.CANCEL));
                     }
                  }
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr77);
      }
      
      private function §2!N§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§0A§ = false;
            if(!_loc5_)
            {
               §§push(this.§9!4§);
               if(!(_loc5_ && this))
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§2!N§);
                  if(this.§8@§)
                  {
                     this.§9I§(this.§8@§);
                     this.§8@§ = null;
                     return;
                     addr40:
                  }
                  else
                  {
                     §§push(this.§9!4§);
                  }
               }
               §§push(§§pop().§='§.§'!2§);
               if(_loc4_ || _loc2_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:int = 0;
               while(true)
               {
                  if(_loc3_ >= _loc2_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     §§goto(addr115);
                  }
                  this.§-M§.§%R§(this.§9!4§.§='§.§"&§(_loc3_));
                  if(!(_loc5_ && param1))
                  {
                     _loc3_++;
                     if(_loc5_)
                     {
                        break;
                     }
                  }
               }
               this.§1#§();
               addr115:
               return;
            }
         }
         §§goto(addr40);
      }
      
      public function §1#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§!!E§());
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§pop();
                        §§push(this.§9!4§);
                        if(_loc1_)
                        {
                           §§push(§§pop() == null);
                           if(!_loc2_)
                           {
                              addr63:
                              if(§§pop())
                              {
                                 return;
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr83);
                     }
                  }
               }
               §§goto(addr63);
            }
            addr80:
            if(this.§-M§.§1#§())
            {
               addr83:
               this.§9!4§.dispose();
               this.§9!4§ = null;
               addr87:
               this.§0l§ = this.§<!&§;
               if(!(_loc2_ && _loc1_))
               {
                  this.§<!&§ = null;
               }
               dispatchEvent(new Event(Event.COMPLETE));
            }
            return;
         }
         §§goto(addr87);
      }
   }
}
