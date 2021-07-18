package §2!<§
{
   import §0!E§.§5!K§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.text.Font;
   
   public class §;!M§
   {
      
      private static var §5! §:§;!M§;
       
      
      private var §1Z§:Vector.<XML>;
      
      private var §&!P§:Boolean = false;
      
      private var § ^§:int;
      
      private var §?x§:int;
      
      private var §&!8§:Function;
      
      private var §!W§:Function;
      
      private var §3P§:Loader;
      
      private var §5o§:URLLoader;
      
      private var §4k§:XML;
      
      private var § 6§:String = "";
      
      private var §<J§:int = 0;
      
      private var §;!#§:Vector.<String>;
      
      private var §%I§:String = "external_assets/LoadTest.swf";
      
      private var §+i§:Boolean = false;
      
      private var §2r§:Array;
      
      private var §[!J§:String;
      
      private var §+X§:String;
      
      private var §2a§:Number = 0;
      
      private var §0E§:String = "";
      
      private var §2!1§:§`U§;
      
      public function §;!M§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§2r§ = [];
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public static function get §>o§() : §;!M§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§5! §);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr45:
                     §5! § = new §;!M§();
                  }
               }
               return §5! §;
            }
         }
         §§goto(addr45);
      }
      
      public static function §6S§(param1:Loader, param2:XML) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§pop().§§slot[3] = §§pop();
               addr81:
               loop2:
               while(true)
               {
                  addr64:
                  addr66:
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§push(null);
                     if(_loc8_ && _loc3_)
                     {
                        break;
                     }
                     §§pop().§§slot[4] = §§pop();
                     while(true)
                     {
                        addr52:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §,U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2r§ = [];
         }
      }
      
      public function init(param1:XML, param2:String, param3:String, param4:§`U§, param5:Function = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         this.§[!J§ = param2;
         this.§+X§ = param3;
         do
         {
            this.§+i§ = true;
            this.§&!P§ = false;
            do
            {
               this.§2!1§ = param4;
               this.§&!8§ = param5;
            }
            while(!_loc7_);
            
         }
         while(!_loc7_);
         
      }
      
      private function §1u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§+i§ = true;
            do
            {
               this.§&!P§ = false;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §;Y§() : Boolean
      {
         return this.§+i§;
      }
      
      public function §0!C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(Boolean(this.§&!P§));
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     §§goto(addr128);
                  }
                  addr127:
               }
               while(true)
               {
                  while(!§§pop())
                  {
                     while(true)
                     {
                        this.§1Z§ = new Vector.<XML>();
                        §§goto(addr79);
                     }
                  }
                  addr111:
                  while(true)
                  {
                     §§push(this.§;Y§());
                     if(!(_loc1_ || _loc1_))
                     {
                        break;
                     }
                     continue loop3;
                  }
                  return §§pop();
                  §§goto(addr107);
               }
            }
            §§goto(addr127);
         }
         addr79:
         while(true)
         {
            this.§ ^§ = 0;
            if(!(_loc1_ || _loc1_))
            {
               continue;
            }
            if(_loc1_ || _loc2_)
            {
               if(_loc2_ && _loc1_)
               {
                  break loop1;
               }
               §§push(true);
               if(_loc1_ || this)
               {
                  break;
               }
               continue loop1;
            }
            if(!(_loc2_ && _loc2_))
            {
               continue loop2;
            }
            addr128:
            §§goto(addr111);
         }
         return §§pop();
      }
      
      public function §?t§(param1:XML) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this.§&!P§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr97:
                        while(true)
                        {
                           addr43:
                           while(true)
                           {
                              §§push(this.§;Y§());
                              if(!_loc4_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                        }
                     }
                     addr96:
                  }
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                        }
                        addr71:
                     }
                     while(true)
                     {
                        this.§1Z§.push(param1);
                        if(_loc5_ || _loc2_)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(true)
                                 {
                                    var _loc2_:*;
                                    §§push((_loc2_ = this).§ ^§);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc3_:* = §§pop();
                                 }
                                 continue loop0;
                                 if(_loc5_ || param1)
                                 {
                                    _loc2_.§ ^§ = _loc3_;
                                 }
                                 break;
                              }
                              §§goto(addr97);
                           }
                           else
                           {
                              §§goto(addr71);
                           }
                        }
                        break;
                     }
                     return;
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr96);
         }
         addr70:
      }
      
      public function §&p§(param1:Function = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§&!P§);
         if(!_loc3_)
         {
            §§push(Boolean(§§pop()));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr95:
                     loop4:
                     while(true)
                     {
                        §§push(this.§;Y§());
                        if(_loc3_)
                        {
                           break;
                        }
                        if(_loc2_ || param1)
                        {
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 break loop4;
                              }
                              addr83:
                           }
                           continue loop0;
                        }
                        continue loop5;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§!W§ = param1;
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr95);
                        }
                        return;
                     }
                  }
                  addr94:
               }
               §§goto(addr83);
            }
         }
         §§goto(addr94);
      }
      
      private function §-!2§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§2!1§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§push(this.§2!1§);
                        addr108:
                        while(true)
                        {
                           §§push(§§pop().§9L§);
                           addr109:
                           while(true)
                           {
                              §§push(!§§pop());
                           }
                        }
                     }
                     addr132:
                  }
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(false);
                           if(_loc1_)
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 return §§pop();
                              }
                              continue loop1;
                           }
                           continue;
                        }
                        §§push(this.§2!1§);
                        do
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§7`§);
                           §§push(this.§2!1§);
                        }
                        while(_loc1_ && _loc1_);
                        
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr108);
                     }
                     addr38:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           break loop1;
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr132);
            }
         }
         while(true)
         {
            §§goto(addr38);
         }
      }
      
      private function §7`§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§2!1§.removeEventListener(Event.COMPLETE,this.§7`§);
         }
         do
         {
            this.§&]§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      private function §&]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§1Z§.length <= 0)
            {
               if(this.§#Q§() >= 1)
               {
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           this.§`!>§();
                        }
                        else
                        {
                           addr70:
                           this.§][§();
                           addr30:
                           return;
                           addr72:
                        }
                        §§goto(addr30);
                     }
                     §§goto(addr72);
                  }
               }
               §§goto(addr30);
            }
         }
         §§goto(addr70);
      }
      
      private function §][§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = null;
         if(_loc3_)
         {
            §§push(this.§&!P§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
            }
            §§push(§§pop());
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(Boolean(this.§;Y§()));
               }
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr23:
                     return;
                  }
                  while(true)
                  {
                     §§push(this.§-!2§());
                     addr310:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr311:
                           return;
                        }
                        addr298:
                        while(true)
                        {
                           §§push("");
                           addr300:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              addr301:
                              while(true)
                              {
                                 §§push(this.§+X§);
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§push(§§pop());
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr310);
                  }
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        _loc1_ = §§pop();
                        if(_loc3_)
                        {
                           §§goto(addr228);
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr268);
                     §§goto(addr258);
                  }
                  §§goto(addr212);
               }
               §§goto(addr243);
            }
         }
         §§goto(addr245);
      }
      
      private function §;!§(param1:IOErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§0E§);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            this.§`H§();
         }
         throw new Error("[LoadManager] FILE NOT FOUND: " + this.§0E§,§5!K§.§ !H§);
      }
      
      private function §2]§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§2r§.push(this.§5o§.data);
            if(this.§&!8§ != null)
            {
               while(true)
               {
                  this.§&!8§(this.§5o§.data);
                  addr79:
                  while(true)
                  {
                  }
               }
               addr74:
            }
            while(true)
            {
               §§push(this.§2!1§);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     addr62:
                     this.§2!1§.§!$§(this.§5o§.data);
                     if(!_loc4_)
                     {
                        addr25:
                        this.§`H§();
                        if(_loc5_)
                        {
                           if(_loc5_ || this)
                           {
                              if(true)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§?x§);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                              }
                              else
                              {
                                 addr121:
                              }
                              continue;
                              if(_loc5_)
                              {
                                 _loc2_.§?x§ = _loc3_;
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              return;
                           }
                        }
                        break;
                     }
                     §§goto(addr74);
                     §§goto(addr79);
                  }
                  §§goto(addr25);
               }
               §§goto(addr62);
            }
         }
         this.§&]§();
         §§goto(addr121);
      }
      
      private function §7X§(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2a§ = param1.bytesLoaded / param1.bytesTotal;
         }
      }
      
      private function §12§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §6S§(this.§3P§,this.§4k§);
            if(_loc4_ || _loc3_)
            {
               this.§`H§();
               if(!(_loc5_ && _loc3_))
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§?x§);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc5_)
                  {
                     _loc2_.§?x§ = _loc3_;
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     addr87:
                     this.§&]§();
                  }
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      private function §`H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§3P§)
            {
               this.§3P§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§12§);
               do
               {
                  this.§3P§.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!§);
                  do
                  {
                     this.§3P§.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§12§);
                  }
                  while(!_loc1_);
                  
                  this.§3P§ = null;
               }
               while(!_loc1_);
               
            }
            if(this.§5o§)
            {
               loop7:
               while(true)
               {
                  this.§5o§.removeEventListener(Event.COMPLETE,this.§2]§);
                  addr97:
                  while(true)
                  {
                     this.§5o§.removeEventListener(IOErrorEvent.IO_ERROR,this.§;!§);
                     loop4:
                     while(true)
                     {
                        this.§5o§.removeEventListener(ProgressEvent.PROGRESS,this.§7X§);
                        addr76:
                        while(true)
                        {
                           this.§5o§ = null;
                           continue loop4;
                        }
                     }
                     continue loop7;
                  }
               }
               addr90:
            }
            while(true)
            {
               this.§4k§ = null;
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr76);
               }
               §§goto(addr43);
               §§goto(addr43);
            }
            return;
         }
         §§goto(addr90);
      }
      
      private function §`!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2a§ = 0;
            loop0:
            while(true)
            {
               §§push(this.§!W§);
               if(!(_loc1_ && this))
               {
                  if(§§pop() != null)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§!W§);
                        addr77:
                        addr62:
                        while(true)
                        {
                           §§pop().call();
                           while(!_loc1_)
                           {
                              this.§!W§ = null;
                              if(!(_loc1_ && this))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        addr62:
                     }
                  }
                  return;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr62);
      }
      
      public function §`b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§2a§ = 0;
            this.§&!P§ = false;
            loop0:
            while(true)
            {
               this.§ ^§ = 0;
               do
               {
                  if(this.§1Z§)
                  {
                     loop2:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§1Z§ = null;
                           addr82:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                     addr77:
                  }
                  while(true)
                  {
                     this.§!W§ = null;
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§`H§();
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr77);
                  }
               }
               while(!(_loc1_ || this));
               
               return;
            }
         }
         §§goto(addr79);
      }
      
      public function §#Q§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§;Y§())
            {
               §§push(this.§&!P§);
               loop0:
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc2_ || this)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc1_)
                                    {
                                       §§goto(addr185);
                                    }
                                    break;
                                 }
                                 addr185:
                                 §§push(!this.§;Y§());
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       § L§.log("[LoadManager] WARNING, LoadManager getLoadingStatus(), LoadQueue is not available");
                                       §§push(-1);
                                    }
                                    else
                                    {
                                       §§push(this.§?x§);
                                       §§push(this.§ ^§);
                                       while(true)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                §§push(this.§2!1§);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr150:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr106:
                                                   §§push(this.§2!1§);
                                                   continue loop3;
                                                   if(_loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().§9L§);
                                                   while(true)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               break loop6;
                                                            }
                                                            §§goto(addr83);
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                }
                                                §§goto(addr137);
                                             }
                                             else
                                             {
                                                addr241:
                                             }
                                             § L§.log("[LoadManager] Init not complete yet!");
                                             break loop3;
                                          }
                                          §§push(this.§?x§);
                                          §§push(this.§ ^§);
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             break;
                                          }
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   return §§pop();
                                                }
                                                break loop4;
                                             }
                                             §§goto(addr95);
                                          }
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr106);
                                                }
                                                else
                                                {
                                                   §§push(1);
                                                   if(_loc1_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_ || this)
                                                   {
                                                      addr64:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr100:
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                         §§goto(addr64);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                }
                                                addr137:
                                                return §§pop();
                                             }
                                             addr83:
                                             §§push(this.§?x§);
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() + this.§2a§);
                                                break loop4;
                                             }
                                             addr172:
                                             if(_loc2_ || _loc1_)
                                             {
                                                return §§pop();
                                             }
                                             addr236:
                                             return §§pop();
                                             addr104:
                                          }
                                          §§goto(addr121);
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                                 §§push(§§pop() - 0.5);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() / this.§ ^§);
                                 }
                                 addr95:
                                 return §§pop();
                              }
                              §§goto(addr236);
                           }
                           addr202:
                        }
                     }
                  }
                  while(true)
                  {
                     §§pop();
                     §§push(!this.§1Z§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr241);
      }
   }
}
