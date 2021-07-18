package §&! §
{
   import §1`§.§+!O§;
   import §1`§.§`x§;
   import §@,§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §;&§
   {
       
      
      public function §;&§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §35§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §-!8§(param1);
         return §+!O§.encode(_loc2_);
      }
      
      public static function §^!U§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §-!8§(param1);
         var _loc4_:§`x§;
         return (_loc4_ = new §`x§(param2)).encode(_loc3_);
      }
      
      public static function §-!8§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!_loc3_)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function § 5§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_)
                     {
                        addr54:
                        §§push(param1);
                        if(_loc6_ || §;&§)
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                        var _loc4_:ByteArray = Base64.§[$§(param1);
                     }
                     §§goto(addr55);
                  }
                  addr55:
                  if(_loc6_)
                  {
                     §[@§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr54);
      }
      
      public static function §[@§(param1:ByteArray, param2:Function) : void
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
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(!(_loc4_ && param2))
                        {
                           §§push(§§newactivation());
                           loop6:
                           for(; !_loc4_; if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           },§§goto(addr42))
                           {
                              §§pop().§§slot[3] = new Loader();
                              loop7:
                              while(!_loc4_)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(_loc5_)
                                 {
                                    continue loop2;
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc5_ || param1)
                                       {
                                          continue loop6;
                                       }
                                       continue loop8;
                                       addr42:
                                       §§pop().§§slot[3].loadBytes(bytes);
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                break loop3;
                                             }
                                             continue loop3;
                                          }
                                          continue loop7;
                                          continue loop7;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
      }
   }
}
