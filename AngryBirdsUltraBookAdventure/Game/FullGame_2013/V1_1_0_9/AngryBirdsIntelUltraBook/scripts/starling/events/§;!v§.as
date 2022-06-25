package starling.events
{
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §;!v§ extends Sprite
   {
      
      private static var §6G§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §;!v§)
         {
            §6G§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §]T§:Point;
      
      private var §!=§:Texture;
      
      function §;!v§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"<§ = null;
         if(!(_loc4_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  this.§]T§ = new Point();
                  continue loop0;
               }
            }
            addr55:
         }
         while(true)
         {
            this.§!=§ = Texture.§`!s§(param1,new §6G§());
            if(!(_loc5_ || _loc2_))
            {
               continue;
            }
            if(!_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr55);
            }
            §§goto(addr47);
         }
         var _loc2_:int = 0;
         loop3:
         while(_loc2_ < 2)
         {
            _loc3_ = new §"<§(this.§!=§);
            if(!_loc4_)
            {
               §§push(_loc3_);
               §§push(this.§!=§.width);
               if(_loc5_ || this)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().pivotX = §§pop();
               while(true)
               {
                  §§push(_loc3_);
                  §§push(this.§!=§.height);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotY = §§pop();
                  loop5:
                  while(!_loc4_)
                  {
                     _loc3_.§&!U§ = false;
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           addChild(_loc3_);
                           do
                           {
                              _loc2_++;
                           }
                           while(_loc4_ && param1);
                           
                           if(_loc4_)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              while(false)
                              {
                                 continue loop7;
                              }
                              continue loop3;
                              addr92:
                           }
                           continue loop5;
                        }
                     }
                  }
               }
            }
            §§goto(addr92);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§!=§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!_loc1_);
         
      }
      
      public function §7!v§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param3)
            {
               while(true)
               {
                  this.§]T§.x += param1 - this.§]!b§.x;
                  addr185:
                  while(true)
                  {
                     this.§]T§.y += param2 - this.§]!b§.y;
                     addr170:
                     while(true)
                     {
                     }
                  }
               }
               addr173:
            }
            loop2:
            while(true)
            {
               §§push(this.§]!b§);
               loop3:
               while(true)
               {
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop5:
                     while(true)
                     {
                        §§push(this.§]!b§);
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§push(param2);
                        if(_loc4_ || param1)
                        {
                           §§pop().y = §§pop();
                           while(_loc4_ || param3)
                           {
                              §§push(this.§,!e§);
                              loop7:
                              while(true)
                              {
                                 §§push(2);
                                 addr104:
                                 while(true)
                                 {
                                    §§push(§§pop() * this.§]T§.x);
                                    addr108:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr109:
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          addr110:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             addr111:
                                             while(!(_loc5_ && param3))
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr185);
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc5_ && param1)
                              {
                                 continue;
                              }
                              if(_loc5_ && param1)
                              {
                                 continue loop5;
                              }
                              if(!_loc5_)
                              {
                                 return;
                              }
                              §§goto(addr173);
                           }
                           continue loop2;
                        }
                        continue loop4;
                     }
                     continue loop3;
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      public function §"!#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§]T§.x = param1;
            do
            {
               this.§]T§.y = param2;
               do
               {
                  this.§7!v§(this.§&!5§,this.§!N§);
               }
               while(_loc4_ && param2);
               
            }
            while(_loc4_ && param2);
            
         }
      }
      
      private function get §]!b§() : §"<§
      {
         return getChildAt(0) as §"<§;
      }
      
      private function get §,!e§() : §"<§
      {
         return getChildAt(1) as §"<§;
      }
      
      public function get §&!5§() : Number
      {
         return this.§]!b§.x;
      }
      
      public function get §!N§() : Number
      {
         return this.§]!b§.y;
      }
      
      public function get §0!]§() : Number
      {
         return this.§,!e§.x;
      }
      
      public function get §;6§() : Number
      {
         return this.§,!e§.y;
      }
   }
}
