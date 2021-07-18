package §8" §
{
   import §&"5§.§7!P§;
   import §+!o§.§?"-§;
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7z§
   {
      
      private static const §6!h§:Number = 1.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6!h§ = 1.5;
         }
      }
      
      private var §>z§:String;
      
      private var § !F§:Vector.<String>;
      
      private var §>!T§:Boolean = false;
      
      private var §0#§:Rectangle;
      
      private var §3!W§:Point;
      
      private var §3!r§:Point;
      
      public function §7z§(param1:§!w§, param2:XML)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         if(_loc7_ || param2)
         {
            this.§ !F§ = new Vector.<String>();
            if(_loc7_ || param1)
            {
               super();
            }
         }
         for each(_loc3_ in param2.reward)
         {
         }
         if(_loc7_ || this)
         {
            this.§ !F§.push(_loc3_.toString());
            loop1:
            while(true)
            {
               this.§3!r§ = new Point(param2.x,param2.y);
               loop2:
               while(true)
               {
                  this.§>z§ = "PIG_BASIC_SMALL";
                  while(true)
                  {
                     this.§3!W§ = new Point(this.§3!r§.x / §!w§.§4!-§,this.§3!r§.y / §!w§.§4!-§);
                     loop4:
                     for(; !(_loc8_ && this); if(_loc8_ && param2)
                     {
                        continue;
                     },this.§0#§.right += §6!h§,§§goto(addr125))
                     {
                        while(true)
                        {
                           _loc4_ = param2.object[0];
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop1;
                              }
                              this.§0#§ = new Rectangle(this.§3!r§.x,this.§3!r§.y);
                              loop7:
                              while(true)
                              {
                                 this.§0#§.top -= §6!h§;
                                 loop8:
                                 while(true)
                                 {
                                    this.§0#§.left -= §6!h§;
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop7;
                                       addr125:
                                       while(!(_loc8_ && _loc3_))
                                       {
                                          this.§0#§.bottom += §6!h§;
                                          if(!_loc8_)
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              if(!(_loc8_ && param1))
                              {
                                 continue loop2;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr208);
      }
      
      public function update(param1:§?"-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!T§ = this.§,!A§(param1);
         }
      }
      
      private function §,!A§(param1:§?"-§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§=q§ = null;
         var _loc4_:Rectangle = null;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.getObjectCount())
            {
               return false;
            }
            _loc3_ = §=q§.§0"§(param1.getObject(_loc2_));
            if(!_loc6_)
            {
               continue;
            }
            if(_loc3_.§@!i§())
            {
               if(!(_loc5_ && param1))
               {
                  _loc4_ = _loc3_.§]!&§(true);
                  if(!(_loc5_ && this))
                  {
                     if(this.§0#§.intersects(_loc4_))
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        addr87:
                        _loc2_++;
                        continue;
                     }
                     §§goto(addr87);
                  }
                  break;
               }
               continue;
            }
            §§goto(addr87);
         }
         return true;
      }
      
      public function §#!=§() : Vector.<DisplayObject>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:BitmapData = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc2_ in this.§ !F§)
         {
            _loc3_ = §7!P§.§2=§.§"k§(_loc2_);
            if(_loc6_ || this)
            {
               _loc1_.push(new Bitmap(_loc3_,"auto",true));
            }
         }
         return _loc1_;
      }
      
      public function activate(param1:§!w§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§%!0§)
            {
               if(_loc3_)
               {
                  param1.§8!h§(this.§>z§,this.§3!r§.x,this.§3!r§.y);
               }
            }
         }
      }
      
      public function get §&U§() : Number
      {
         return this.§3!W§.x;
      }
      
      public function get §`!3§() : Number
      {
         return this.§3!W§.y;
      }
      
      public function get objectPosition() : Point
      {
         return this.§3!r§.clone();
      }
      
      public function get §9!p§() : String
      {
         return this.§>z§;
      }
      
      public function get §%!0§() : Boolean
      {
         return this.§>!T§;
      }
   }
}
