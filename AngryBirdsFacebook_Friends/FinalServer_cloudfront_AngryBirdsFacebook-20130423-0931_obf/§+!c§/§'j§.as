package §+!c§
{
   import §2!%§.§-K§;
   import §2!%§.§72§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §'j§
   {
      
      private static const §5!c§:String = "https://graph.facebook.com/";
      
      private static const §`V§:String = "[USER_ID]/photos";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!c§ = "https://graph.facebook.com/";
            do
            {
               §`V§ = "[USER_ID]/photos";
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §>!m§:Function;
      
      private var §5!1§:Function;
      
      public function §'j§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super();
            while(true)
            {
               this.§>!m§ = param5;
               while(!(_loc10_ && param3))
               {
                  this.§5!1§ = param6;
                  loop2:
                  for(; _loc11_ || param1; while(true)
                  {
                     if(_loc11_ || param1)
                     {
                        Security.allowDomain(§5!c§);
                        if(_loc11_ || param1)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  },while(false)
                  {
                     §§goto(addr33);
                  },§§push(§5!c§),if(!(_loc10_ && param1))
                  {
                     §§push(§`V§);
                     if(!_loc10_)
                     {
                        addr98:
                        §§push(§§pop() + §§pop() + "?access_token=");
                        if(!(_loc10_ && param2))
                        {
                           §§push(§§pop() + param3);
                        }
                        §§push(§§pop());
                        §§push(§§pop());
                     }
                     var _loc7_:* = §§pop();
                     if(!(_loc10_ && param3))
                     {
                        §§push(§§pop().replace("[USER_ID]",param4));
                     }
                     _loc7_ = §§pop();
                     if(_loc11_ || this)
                     {
                        §§push(§;!=§);
                        §§push("Uploading image; URL:");
                        if(_loc11_)
                        {
                           §§push(§§pop() + _loc7_);
                        }
                        §§pop().log(§§pop());
                     }
                     param1 = this.§`!,§(param1,param2);
                     var _loc8_:URLRequest;
                     (_loc8_ = new URLRequest(_loc7_)).method = URLRequestMethod.POST;
                     if(_loc11_)
                     {
                        _loc8_.contentType = "multipart/form-data; boundary=" + this.§^C§();
                        if(!(_loc10_ && param3))
                        {
                           _loc8_.data = param1;
                        }
                     }
                     var _loc9_:URLLoader;
                     (_loc9_ = new URLLoader()).dataFormat = URLLoaderDataFormat.BINARY;
                     if(_loc11_ || param1)
                     {
                        _loc9_.addEventListener(Event.COMPLETE,this.onComplete);
                        while(true)
                        {
                           _loc9_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                           addr215:
                           if(_loc11_ || param1)
                           {
                              _loc9_.load(_loc8_);
                              addr222:
                              if(_loc10_)
                              {
                                 while(_loc11_)
                                 {
                                    §§goto(addr215);
                                    §§goto(addr222);
                                 }
                                 while(true)
                                 {
                                    _loc9_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                    §§goto(addr213);
                                 }
                                 addr213:
                                 addr230:
                              }
                              return;
                           }
                        }
                     }
                     §§goto(addr230);
                  },§§goto(addr98))
                  {
                     while(true)
                     {
                        Security.loadPolicyFile(§5!c§ + "/crossdomain.xml");
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public static function §+!h§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc10_:§-K§;
         var _loc11_:ByteArray = (_loc10_ = new §-K§(param4)).encode(_loc9_);
         if(!_loc12_)
         {
            new §'j§(_loc11_,"image1.jpg",param5,param6,param7,param8);
         }
      }
      
      public static function §1!'§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:BitmapData = param1;
         var _loc7_:ByteArray = §72§.encode(_loc6_);
         if(_loc8_)
         {
            new §'j§(_loc7_,"image1.png",param2,param3,param4,param5);
         }
      }
      
      public function §^C§() : String
      {
         return "AaB03y";
      }
      
      public function §`!,§(param1:ByteArray, param2:String) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = Number(0);
         var _loc4_:ByteArray;
         (_loc4_ = new ByteArray()).endian = Endian.BIG_ENDIAN;
         §§push(this.§^C§());
         if(!(_loc8_ && param1))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         var _loc6_:ByteArray;
         (_loc6_ = new ByteArray()).writeShort(11565);
         if(!_loc8_)
         {
            _loc3_ = Number(0);
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(§§pop() >= _loc5_.length)
               {
                  while(_loc9_)
                  {
                     _loc4_.writeBytes(_loc6_,0,_loc6_.length);
                     do
                     {
                        _loc4_.writeShort(3338);
                     }
                     while(!_loc9_);
                     
                     if(_loc8_)
                     {
                        continue;
                     }
                     if(!_loc8_)
                     {
                        if(true)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                     addr85:
                     §§push(_loc3_);
                     if(!_loc8_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                     break;
                     addr95:
                  }
               }
               else
               {
                  _loc6_.writeByte(_loc5_.charCodeAt(_loc3_));
                  §§goto(addr95);
               }
               continue;
            }
            §§goto(addr85);
         }
         var _loc7_:* = "Content-Disposition: form-data; name=\"Filename\"";
         if(!(_loc8_ && _loc3_))
         {
            §§push(0);
            loop3:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  _loc3_ = §§pop();
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        while(true)
                        {
                           §§push(_loc7_);
                           while(true)
                           {
                              if(§§pop() >= §§pop().length)
                              {
                                 while(true)
                                 {
                                    _loc4_.writeShort(3338);
                                    while(true)
                                    {
                                       _loc4_.writeShort(3338);
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(_loc9_ || this)
                                          {
                                             §§push(§§pop());
                                          }
                                          _loc7_ = §§pop();
                                          while(true)
                                          {
                                             §§push(0);
                                             while(_loc9_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop14:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr761:
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         continue loop14;
                                                         addr743:
                                                      }
                                                   }
                                                }
                                                if(!(_loc9_ || this))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr479);
                                                §§push(Number(§§pop()));
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 _loc4_.writeByte(_loc7_.charCodeAt(_loc3_));
                              }
                              §§goto(addr812);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr491);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = JSON.parse(param1.target.data.toString() as String);
         if(!_loc4_)
         {
            this.§>!m§(_loc2_.id);
         }
      }
      
      public function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§;!=§);
            §§push("Error!! ");
            if(!_loc2_)
            {
               §§push(§§pop() + param1.toString());
            }
            §§pop().log(§§pop());
            while(true)
            {
               §§push(§;!=§);
               §§push("Data?");
               if(!_loc2_)
               {
                  §§push(§§pop() + param1.target.data.toString());
               }
               §§pop().log(§§pop());
               addr60:
               if(_loc2_ && this)
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         while(this.§5!1§ != null)
         {
            if(_loc3_)
            {
               this.§5!1§();
            }
            if(_loc2_)
            {
               continue;
            }
            §§goto(addr60);
         }
         addr25:
      }
   }
}
