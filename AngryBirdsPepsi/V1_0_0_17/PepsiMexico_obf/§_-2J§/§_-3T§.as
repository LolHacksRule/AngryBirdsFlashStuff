package §_-2J§
{
   import §_-hq§.§_-AD§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-3T§ implements §_-QM§
   {
      
      private static var §_-QT§:Array;
      
      private static var §_-2R§:Boolean;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-QT§ = [];
         }
      }
      
      public function §_-3T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §_-uF§(param1:§_-Tz§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-QT§.push(param1);
            if(_loc3_ || _loc3_)
            {
               §_-2R§ = false;
            }
         }
      }
      
      public static function §_-E6§(param1:Class, param2:Class, param3:Class) : §_-uR§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-AD§.§_-Ae§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-j-§(param1:String) : §_-4w§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§_-4w§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < §_-QT§.length)
         {
            _loc2_ = (§_-QT§[_loc3_] as §_-uR§).§_-j-§(param1);
            if(!_loc5_)
            {
               if(_loc2_ != null)
               {
                  if(_loc4_)
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
               }
            }
         }
         return null;
      }
      
      public function get §_-Np§() : int
      {
         return §_-QT§.length;
      }
      
      public function §_-Hb§(param1:int) : §_-Tz§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            §§push(0);
            if(!_loc2_)
            {
               §§push(§§pop() < §§pop());
               if(!(_loc2_ && this))
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        addr43:
                        addr41:
                        §§push(param1 >= this.§_-Np§);
                        if(!_loc3_)
                        {
                        }
                        addr52:
                        if(!§§pop())
                        {
                           §§push(§_-QT§);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().sortOn("name");
                              if(!_loc2_)
                              {
                                 §_-2R§ = true;
                                 addr75:
                                 §§push(§_-QT§);
                              }
                              §§goto(addr75);
                           }
                           return §§pop()[param1];
                        }
                        §§goto(addr75);
                     }
                  }
                  if(§§pop())
                  {
                     return null;
                  }
                  §§push(§_-2R§);
               }
               §§goto(addr52);
            }
            §§goto(addr43);
         }
         §§goto(addr41);
      }
   }
}
