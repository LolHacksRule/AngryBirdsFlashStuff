package starling.events
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §6!J§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §%!+§ extends Sprite
   {
      
      private static var §5!4§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5!4§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §`'§:Point;
      
      private var §>!S§:Texture;
      
      function §%!+§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§0!b§ = null;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               addr48:
               while(true)
               {
                  this.§`'§ = new Point();
                  continue loop0;
               }
            }
            addr56:
         }
         while(true)
         {
            this.§>!S§ = Texture.§'o§(param1,new §5!4§());
            if(!_loc5_)
            {
               continue;
            }
            if(_loc5_ || param1)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr56);
            }
            §§goto(addr48);
         }
         §§push(0);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop3:
         while(_loc2_ < 2)
         {
            _loc3_ = new §0!b§(this.§>!S§);
            if(_loc5_)
            {
               §§push(_loc3_);
               §§push(this.§>!S§.width);
               if(!_loc4_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§>!S§.height);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  addr158:
                  while(true)
                  {
                     _loc3_.§<@§ = false;
                     addr132:
                     loop6:
                     while(true)
                     {
                        addr108:
                        while(true)
                        {
                           addChild(_loc3_);
                           continue loop6;
                        }
                     }
                  }
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                        if(!_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     _loc2_ = §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc5_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr108);
                        }
                        else
                        {
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr113);
                  }
                  continue loop3;
                  addr127:
               }
            }
            §§goto(addr127);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>!S§.dispose();
            do
            {
               super.dispose();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §<!T§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(param3)
            {
               while(true)
               {
                  this.§`'§.x += param1 - this.§#0§.x;
                  while(true)
                  {
                     this.§`'§.y += param2 - this.§#0§.y;
                     while(!(_loc4_ && param1))
                     {
                        loop7:
                        while(_loc5_ || param1)
                        {
                           §§push(this.§90§);
                           loop8:
                           while(true)
                           {
                              §§push(2);
                              addr98:
                              while(true)
                              {
                                 §§push(§§pop() * this.§`'§.x);
                                 addr102:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr103:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr104:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr105:
                                          while(_loc5_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc5_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr93);
               }
            }
            while(true)
            {
               §§goto(addr138);
            }
         }
         §§goto(addr107);
      }
      
      public function §;!Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§`'§.x = param1;
         }
         do
         {
            this.§`'§.y = param2;
            do
            {
               this.§<!T§(this.§1y§,this.§"I§);
            }
            while(!(_loc3_ || _loc3_));
            
         }
         while(_loc4_);
         
      }
      
      private function get §#0§() : §0!b§
      {
         return getChildAt(0) as §0!b§;
      }
      
      private function get §90§() : §0!b§
      {
         return getChildAt(1) as §0!b§;
      }
      
      public function get §1y§() : Number
      {
         return this.§#0§.x;
      }
      
      public function get §"I§() : Number
      {
         return this.§#0§.y;
      }
      
      public function get §%!^§() : Number
      {
         return this.§90§.x;
      }
      
      public function get §`b§() : Number
      {
         return this.§90§.y;
      }
   }
}
