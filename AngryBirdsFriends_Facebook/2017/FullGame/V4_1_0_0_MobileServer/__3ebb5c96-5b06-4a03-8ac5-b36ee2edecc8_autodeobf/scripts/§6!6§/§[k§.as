package §6!6§
{
   public class §[k§
   {
       
      
      protected var §]"E§:Vector.<§6!r§>;
      
      public function §[k§()
      {
         super();
         this.§]"E§ = new Vector.<§6!r§>();
      }
      
      public function §06§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Background)
         {
            this.§5R§(_loc2_.@id,_loc2_.Layers,_loc2_.@sky,_loc2_.@ground,_loc2_.@sound,_loc2_.@volume,_loc2_.@texture,_loc2_.@backgroundBlockTexture,_loc2_.@icon,_loc2_.@clearGround);
         }
      }
      
      public function loadBackgroundXML(param1:XML) : void
      {
         this.§5R§(param1.@id,param1.Layers,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon,param1.@clearGround);
      }
      
      private function §5R§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:Number, param7:String, param8:String, param9:String, param10:Number = 0) : void
      {
         var _loc11_:§6!r§;
         (_loc11_ = new §6!r§(param1,param3,param4,param5,param6,param7,param8,param9)).§-"N§(param2);
         this.§]"E§.push(_loc11_);
      }
      
      public function getBackground(param1:String) : §6!r§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"E§.length)
         {
            if(this.§]"E§[_loc2_].id.toLowerCase() == param1.toLowerCase())
            {
               return this.§]"E§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2!=§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§6!r§ = new §6!r§(param1.@id,param1.@sky,param1.@ground,param1.@sound,param1.@volume,param1.@texture,param1.@backgroundBlockTexture,param1.@icon);
         _loc3_.§-"N§(param1.Layers);
         var _loc4_:int = 0;
         while(_loc4_ < this.§]"E§.length)
         {
            if(this.§]"E§[_loc4_].id.toLowerCase() == _loc3_.id.toLowerCase())
            {
               this.§]"E§[_loc4_] = _loc3_;
               _loc2_ = true;
               break;
            }
            _loc4_++;
         }
         if(!_loc2_)
         {
            this.§]"E§.push(_loc3_);
         }
      }
      
      public function §3_§() : String
      {
         var _loc1_:int = Math.random() * this.§]"E§.length;
         return this.§]"E§[_loc1_].id;
      }
      
      public function §["P§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"E§.length)
         {
            _loc1_.push(this.§]"E§[_loc2_].id.toLowerCase());
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
