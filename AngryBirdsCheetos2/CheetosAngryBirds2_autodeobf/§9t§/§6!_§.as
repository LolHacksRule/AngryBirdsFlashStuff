package §9t§
{
   import §^a§.§6p§;
   import §^a§.Sprite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §6!_§
   {
      
      private static const §1@§:String = "compositeSprite";
      
      private static const §@!"§:String = "sprite";
      
      private static var §]!D§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §1@§ = "compositeSprite";
         }
         do
         {
            §@!"§ = "sprite";
            do
            {
               §]!D§ = new Dictionary();
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      public function §6!_§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §=!O§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:XMLList = param1.child(§1@§);
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc6_ && param1))
            {
               §]!D§[String(_loc3_.@name)] = _loc3_;
            }
         }
      }
      
      public static function §&m§(param1:String, param2:§=!>§, param3:Boolean = true) : §^a§.Sprite
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:XML = null;
         var _loc8_:§35§ = null;
         var _loc9_:§6p§ = null;
         var _loc4_:XML;
         if(!(_loc4_ = §]!D§[param1]))
         {
            if(!_loc12_)
            {
               return null;
            }
         }
         var _loc5_:§^a§.Sprite = new §^a§.Sprite();
         var _loc6_:XMLList = _loc4_.child(§@!"§);
         loop0:
         for each(_loc7_ in _loc6_)
         {
            if(!(_loc8_ = param2.§=!+§(_loc7_.@name)))
            {
               continue;
            }
            _loc9_ = new §6p§(_loc8_.texture,false,param3);
            if(!(_loc12_ && param3))
            {
               _loc5_.addChildAt(_loc9_,0);
            }
            loop1:
            while(true)
            {
               _loc9_.x = parseInt(_loc7_.@x) - _loc8_.pivotX;
               while(true)
               {
                  _loc9_.y = parseInt(_loc7_.@y) - _loc8_.pivotY;
                  while(_loc13_)
                  {
                     if(_loc13_)
                     {
                        _loc9_.scaleX = _loc8_.scale;
                        loop4:
                        while(!(_loc12_ && §6!_§))
                        {
                           do
                           {
                              _loc9_.scaleY = _loc8_.scale;
                              do
                              {
                                 _loc9_.name = _loc7_.@tag;
                              }
                              while(!(_loc13_ || §6!_§));
                              
                              if(!(_loc12_ && param3))
                              {
                                 continue;
                              }
                              continue loop4;
                           }
                           while(false);
                           
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         return _loc5_;
      }
      
      public static function §5-§(param1:String, param2:§=!>§) : flash.display.Sprite
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc6_:XML = null;
         var _loc7_:§35§ = null;
         var _loc8_:Bitmap = null;
         var _loc3_:flash.display.Sprite = new flash.display.Sprite();
         var _loc4_:XML;
         var _loc5_:XMLList = (_loc4_ = §]!D§[param1]).child(§@!"§);
         for each(_loc6_ in _loc5_)
         {
            if(_loc7_ = param2.§=!+§(_loc6_.@name))
            {
               _loc8_ = new Bitmap(_loc7_.bitmapData);
               if(_loc11_ || _loc3_)
               {
                  _loc3_.addChildAt(_loc8_,0);
                  loop1:
                  while(true)
                  {
                     _loc8_.x = parseInt(_loc6_.@x) - _loc7_.pivotX;
                     while(true)
                     {
                        addr98:
                        loop3:
                        while(true)
                        {
                           _loc8_.y = parseInt(_loc6_.@y) - _loc7_.pivotY;
                           while(_loc11_)
                           {
                              _loc8_.smoothing = true;
                              if(!(_loc11_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!_loc11_)
                              {
                                 break loop3;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr98);
               }
            }
         }
         return _loc3_;
      }
   }
}
