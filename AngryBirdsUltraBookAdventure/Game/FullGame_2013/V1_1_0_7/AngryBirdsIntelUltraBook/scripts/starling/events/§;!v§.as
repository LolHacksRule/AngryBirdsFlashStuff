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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
         if(_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§]T§ = new Point();
               while(!_loc4_)
               {
                  this.§!=§ = Texture.§`!s§(param1,new §6G§());
                  if(_loc5_ || param1)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc2_:int = 0;
            while(_loc2_ < 2)
            {
               _loc3_ = new §"<§(this.§!=§);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc3_);
                  §§push(this.§!=§.width);
                  if(_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(this.§!=§.height);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() / 2);
                     }
                     §§pop().pivotY = §§pop();
                     loop5:
                     while(true)
                     {
                        _loc3_.§&!U§ = false;
                        loop6:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              addChild(_loc3_);
                              while(!_loc4_)
                              {
                                 _loc2_++;
                                 if(_loc5_)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop6;
                           }
                           continue loop5;
                        }
                        continue loop4;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr92);
               }
            }
            return;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!=§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §7!v§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param3)
            {
               if(!(_loc4_ && param1))
               {
                  this.§]T§.x += param1 - this.§]!b§.x;
               }
               loop0:
               while(true)
               {
                  this.§]T§.y += param2 - this.§]!b§.y;
                  addr164:
                  while(true)
                  {
                     addr126:
                     while(_loc5_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr124);
               §§goto(addr164);
            }
         }
         §§goto(addr76);
      }
      
      public function §"!#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§]T§.x = param1;
         }
         do
         {
            this.§]T§.y = param2;
            do
            {
               this.§7!v§(this.§&!5§,this.§!N§);
            }
            while(!(_loc4_ || _loc3_));
            
         }
         while(_loc3_);
         
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
