package §9@§
{
   import §+!c§.Base64;
   import §2!%§.§-K§;
   import §2!%§.§72§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §]o§
   {
       
      
      public function §]o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §#!v§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §?w§(param1);
         return §72§.encode(_loc2_);
      }
      
      public static function §?6§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §?w§(param1);
         var _loc4_:§-K§;
         return (_loc4_ = new §-K§(param2)).encode(_loc3_);
      }
      
      public static function §?w§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc3_ || §]o§)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §`!L§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && param2))
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_)
                     {
                        addr73:
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr74);
                  }
                  addr74:
                  var _loc4_:ByteArray = Base64.§'!_§(param1);
                  if(!(_loc6_ && §]o§))
                  {
                     §]B§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr73);
      }
      
      public static function §]B§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(_loc5_)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        for(; _loc5_ || param1; while(_loc5_ || param1)
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr83);
                              addr80:
                              §§push(§§newactivation());
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop4;
                        })
                        {
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§pop().§§slot[3] = new Loader();
                              continue loop5;
                           }
                        }
                        continue loop1;
                        if(!(_loc4_ && param2))
                        {
                           §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                           {
                              loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                              callback(loader.content as Bitmap);
                           });
                           while(true)
                           {
                              if(_loc5_ || param1)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr87);
                           }
                           continue loop3;
                           addr71:
                        }
                     }
                     continue loop0;
                  }
                  if(_loc5_ || param1)
                  {
                     §§pop().§§slot[3].loadBytes(bytes);
                     if(_loc4_)
                     {
                        §§goto(addr71);
                     }
                     return;
                  }
               }
            }
         }
      }
   }
}
