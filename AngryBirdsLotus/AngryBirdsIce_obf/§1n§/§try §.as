package §1n§
{
   import §!%§.§=0§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §try § extends EventDispatcher
   {
       
      
      private var §!!1§:String = "";
      
      private var §5!C§:String;
      
      private var §3!!§:URLLoader;
      
      private var §22§:Dictionary;
      
      private var §4V§:String = null;
      
      private var §6O§:String = null;
      
      private var §-8§:String = null;
      
      private var §&!-§:Boolean;
      
      private var §0!9§:§=0§;
      
      private var §1y§:§5#§;
      
      private var §#! §:Vector.<§5#§>;
      
      private var §@!B§:String = "pak";
      
      private var §@B§:Boolean = true;
      
      private var §5!#§:int = 1;
      
      public function §try §(param1:String, param2:String, param3:Boolean = true, param4:int = 1)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§22§ = new Dictionary();
            this.§#! § = new Vector.<§5#§>();
            do
            {
               super();
            }
            while(!_loc6_);
            
            this.§!!1§ = param2;
         }
         this.§5!C§ = param1;
         this.§@B§ = param3;
         do
         {
            this.§5!#§ = Math.max(1,param4);
         }
         while(!_loc6_);
         
      }
      
      public function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function §@L§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(§§pop().toLowerCase());
            }
            param1 = §§pop();
         }
         §§push(this.§22§[param1] == null);
         if(!(_loc2_ && this))
         {
            return !§§pop();
         }
      }
      
      private function §7Z§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§5#§ = null;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§#! §.length)
            {
               return false;
            }
            _loc3_ = this.§#! §[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§1y§ = _loc3_;
               this.§4V§ = param1;
               do
               {
                  this.§#! §.splice(_loc2_,1);
                  do
                  {
                     this.§#! §.unshift(this.§1y§);
                  }
                  while(_loc4_ && _loc2_);
                  
               }
               while(_loc4_);
               
               break;
            }
            _loc2_++;
         }
         while(true);
         
         return true;
      }
      
      public function §'[§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         while(true)
         {
            §§push(§§pop().toLowerCase());
            while(true)
            {
               param1 = §§pop();
               §§push(this.§%L§());
               loop2:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!this.§!I§())
                     {
                        this.§-8§ = param1;
                        break;
                     }
                  }
                  addr107:
                  while(true)
                  {
                     §§push(this.§@L§(param1));
                     continue loop2;
                  }
               }
               return;
            }
            if(!(_loc3_ || param1))
            {
               continue;
            }
            §§push(§§pop() == this.§4V§);
            if(!(§§pop() == this.§4V§))
            {
               loop6:
               while(true)
               {
                  §§pop();
                  addr104:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop6;
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr76);
         }
      }
      
      private function §8!;§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = "";
         §§push(this.§!!1§);
         loop0:
         while(true)
         {
            §§push(§§pop() == null);
            loop1:
            while(true)
            {
               §§push(!§§pop());
               loop2:
               while(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§push(this.§!!1§);
                     if(_loc4_ && _loc2_)
                     {
                        break;
                     }
                     §§push(§§pop().length > 0);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(!_loc4_)
                           {
                              break loop2;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     this.§6O§ = param1;
                     loop7:
                     for(; _loc3_; while(true)
                     {
                        this.§3!!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        if(_loc4_)
                        {
                           break;
                        }
                        if(_loc3_ || this)
                        {
                           §§goto(addr88);
                        }
                        §§goto(addr60);
                     })
                     {
                        this.§3!!§ = new URLLoader();
                        while(true)
                        {
                           this.§3!!§.dataFormat = URLLoaderDataFormat.BINARY;
                           this.§3!!§.addEventListener(Event.COMPLETE,this.onComplete);
                           continue loop7;
                           addr88:
                           this.§3!!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                           if(_loc3_)
                           {
                              this.§3!!§.load(new URLRequest(this.§5!C§ + "packages/" + param1 + "." + this.§@!B§ + _loc2_));
                              if(_loc3_ || param1)
                              {
                                 return;
                              }
                              continue loop7;
                              addr60:
                           }
                        }
                     }
                     addr174:
                     while(true)
                     {
                        continue loop6;
                     }
                  }
               }
               while(true)
               {
                  §§push("?version=");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + this.§!!1§);
                  }
                  §§push(§§pop());
                  continue loop0;
                  §§goto(addr71);
               }
               continue loop0;
            }
         }
      }
      
      private function §%L§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Boolean(this.§3!!§));
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr43:
                     §§push(this.§&!-§);
                     if(_loc1_ || _loc1_)
                     {
                        addr52:
                        return Boolean(§§pop());
                     }
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr43);
      }
      
      private function §!I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc1_ || _loc2_))
         {
            addr24:
            continue loop1;
            return §§pop();
         }
         if(this.§3!!§)
         {
            this.§3!!§.removeEventListener(Event.COMPLETE,this.onComplete);
            while(true)
            {
               this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
               this.§3!!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
               this.§3!!§.close();
               for(; !_loc2_; if(!(_loc1_ || this))
               {
                  continue;
               },addr55:,return §§pop(),§§push(false))
               {
                  this.§3!!§ = null;
                  while(true)
                  {
                     §§push(this.§&!-§);
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(true);
                              if(_loc2_)
                              {
                                 break loop3;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr55);
                  }
               }
            }
         }
         §§goto(addr33);
         §§goto(addr55);
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§3!!§.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§3!!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§22§[this.§6O§] = this.§3!!§.data;
         this.§3!!§ = null;
         this.§@+§(this.§6O§,true);
      }
      
      private function §@+§(param1:String, param2:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§5#§ = null;
         if(_loc5_ || _loc3_)
         {
            this.§&!-§ = true;
            if(_loc5_ || param2)
            {
               this.§6O§ = param1;
            }
         }
         while(this.§#! §.length >= this.§5!#§)
         {
            _loc3_ = this.§#! §.pop();
            if(!_loc4_)
            {
               _loc3_.dispose();
            }
         }
         §§push(this.§0!9§);
         if(_loc5_ || param1)
         {
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§push(this.§0!9§);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr88:
                     §§pop().dispose();
                     addr150:
                     this.§1y§ = new §5#§(param1);
                     this.§#! §.unshift(this.§1y§);
                     while(true)
                     {
                        this.§0!9§ = new §=0§();
                        addr142:
                        while(true)
                        {
                           §§push(this.§0!9§);
                        }
                     }
                     addr149:
                     addr155:
                  }
                  loop1:
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,this.§#!3§);
                     while(true)
                     {
                        §§push(this.§0!9§);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§pop().§6=§(this.§22§[this.§6O§],param2);
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              break loop1;
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr142);
                     }
                  }
                  return;
               }
               §§goto(addr155);
            }
            §§goto(addr150);
         }
         §§goto(addr88);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3!!§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§3!!§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§3!!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         while(true)
         {
            this.§3!!§.close();
            while(_loc2_ || param1)
            {
               this.§3!!§ = null;
               do
               {
                  this.§6O§ = null;
               }
               while(!(_loc2_ || param1));
               
               if(!(_loc3_ && _loc2_))
               {
                  dispatchEvent(new Event(Event.CANCEL));
                  return;
               }
            }
         }
      }
      
      private function §#!3§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§&!-§ = false;
         while(true)
         {
            §§push(this.§0!9§);
            if(!_loc5_)
            {
               break;
            }
            §§pop().removeEventListener(Event.COMPLETE,this.§#!3§);
            while(true)
            {
               if(!this.§-8§)
               {
                  §§push(this.§0!9§);
               }
               if(!_loc5_)
               {
                  break;
               }
               this.§'[§(this.§-8§);
               this.§-8§ = null;
               if(_loc5_ || _loc3_)
               {
                  return;
               }
            }
         }
         §§push(§§pop().§->§.§0!>§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  this.§&!%§();
               }
               if(_loc5_)
               {
                  break;
               }
            }
            else
            {
               this.§1y§.§5§(this.§0!9§.§->§.§5&§(_loc3_));
            }
            _loc3_++;
         }
      }
      
      public function §&!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§%L§());
         if(!(_loc2_ && _loc1_))
         {
            §§push(Boolean(§§pop()));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     addr142:
                     loop5:
                     while(true)
                     {
                        §§push(this.§0!9§);
                        addr116:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           addr118:
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 break loop5;
                              }
                              continue loop8;
                           }
                        }
                        continue loop8;
                     }
                  }
                  addr141:
               }
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§1y§.§&!%§());
                     if(!(_loc2_ && this))
                     {
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              §§push(this.§0!9§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop().dispose();
                                 while(true)
                                 {
                                    this.§0!9§ = null;
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    this.§4V§ = this.§6O§;
                                    while(_loc1_)
                                    {
                                       this.§6O§ = null;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          if(_loc1_ || this)
                                          {
                                             §§goto(addr17);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr116);
                           }
                           addr17:
                        }
                        continue loop0;
                        return;
                     }
                     break;
                  }
                  §§goto(addr118);
               }
               return;
            }
         }
         §§goto(addr141);
      }
   }
}
