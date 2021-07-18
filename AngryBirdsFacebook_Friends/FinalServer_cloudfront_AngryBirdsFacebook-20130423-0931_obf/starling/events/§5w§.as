package starling.events
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §<5§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5w§ extends Sprite
   {
      
      private static var §`!!§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!!§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §#!I§:Point;
      
      private var §,b§:Texture;
      
      function §5w§(param1:Context3D)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ "E§ = null;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§#!I§ = new Point();
                  do
                  {
                     this.§,b§ = Texture.§[f§(param1,new §`!!§());
                  }
                  while(_loc4_);
                  
                  if(_loc5_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc2_:int = 0;
                     loop4:
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new § "E§(this.§,b§);
                        if(!_loc4_)
                        {
                           §§push(_loc3_);
                           §§push(this.§,b§.width);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(this.§,b§.height);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              while(_loc5_ || param1)
                              {
                                 _loc3_.§^]§ = false;
                                 loop7:
                                 for(; _loc5_ || _loc2_; do
                                 {
                                    addChild(_loc3_);
                                    do
                                    {
                                       _loc2_++;
                                    }
                                    while(!(_loc5_ || _loc3_));
                                    
                                    if(_loc5_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop7;
                                 }
                                 while(false);
                                 ,continue loop4)
                                 {
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr103);
                     }
                     return;
                     addr35:
                  }
                  break;
               }
            }
         }
         §§goto(addr35);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,b§.dispose();
         }
         do
         {
            super.dispose();
         }
         while(!_loc1_);
         
      }
      
      public function §+v§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§#!I§.x += param1 - this.§,"+§.x;
                  addr171:
                  while(true)
                  {
                     this.§#!I§.y += param2 - this.§,"+§.y;
                     addr156:
                     while(true)
                     {
                        addr118:
                        while(_loc5_ || param1)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr116);
               §§goto(addr156);
            }
         }
         §§goto(addr90);
      }
      
      public function §],§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#!I§.x = param1;
            do
            {
               this.§#!I§.y = param2;
               do
               {
                  this.§+v§(this.§"!h§,this.§"!W§);
               }
               while(!_loc4_);
               
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      private function get §,"+§() : § "E§
      {
         return getChildAt(0) as § "E§;
      }
      
      private function get §9$§() : § "E§
      {
         return getChildAt(1) as § "E§;
      }
      
      public function get §"!h§() : Number
      {
         return this.§,"+§.x;
      }
      
      public function get §"!W§() : Number
      {
         return this.§,"+§.y;
      }
      
      public function get §+9§() : Number
      {
         return this.§9$§.x;
      }
      
      public function get §<!Q§() : Number
      {
         return this.§9$§.y;
      }
   }
}
