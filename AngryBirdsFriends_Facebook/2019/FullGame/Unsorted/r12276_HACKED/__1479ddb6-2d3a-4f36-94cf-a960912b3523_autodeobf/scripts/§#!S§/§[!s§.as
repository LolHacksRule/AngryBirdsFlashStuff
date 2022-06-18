package §#!S§
{
   public class §[!s§
   {
       
      
      protected var §1$,§:Vector.<§`"B§>;
      
      public function §[!s§()
      {
         super();
         this.§1$,§ = new Vector.<§`"B§>();
      }
      
      public function §#r§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§+!N§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@volume,_loc2_.@texture,_loc2_.@backgroundBlockTexture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function loadBackgroundXML(param1:XML) : void
      {
         this.§+!N§(param1.@id,param1.Layers,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon,param1.@clearGround);
      }
      
      private function §+!N§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:Number, param7:String, param8:String, param9:String, param10:Number = 0) : void
      {
         var _loc11_:§`"B§;
         (_loc11_ = new §`"B§(param1,param3,param4,param5,param6,param7,param8,param9)).§'u§(param2);
         this.§1$,§.push(_loc11_);
      }
      
      public function getBackground(param1:String) : §`"B§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1$,§.length)
         {
            if(this.§1$,§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§1$,§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5$&§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§`"B§ = new §`"B§(param1.@id,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon);
         _loc3_.§'u§(param1.Layers);
         var _loc4_:int = 0;
         while(_loc4_ < this.§1$,§.length)
         {
            if(this.§1$,§[_loc4_].id.toLowerCase() == _loc3_.id.toLowerCase())
            {
               this.§1$,§[_loc4_] = _loc3_;
               _loc2_ = true;
               break;
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            this.§1$,§.push(_loc3_);
         }
      }
      
      public function §#i§() : String
      {
         var _loc1_:int = Math.random() * this.§1$,§.length;
         return this.§1$,§[_loc1_].id;
      }
      
      public function §%#&§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§1$,§.length)
         {
            _loc1_.push(this.§1$,§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
