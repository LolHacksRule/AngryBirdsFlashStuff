package §_-qn§
{
   import flash.display.DisplayObject;
   
   public class §_-9Y§ implements §_-qd§
   {
       
      
      private var §_-Ki§:Array;
      
      private var §_-I§:Number;
      
      private var §_-5k§:DisplayObject;
      
      private var §_-MI§:Boolean = false;
      
      public function §_-9Y§()
      {
         super();
         this.§_-I§ = 0;
         this.§_-Ki§ = [];
      }
      
      public function add(param1:§_-qd§) : void
      {
         if(param1 != null && this.§_-Ki§.indexOf(param1) == -1)
         {
            this.§_-Ki§.push(param1);
         }
      }
      
      public function set §_-be§(param1:Boolean) : void
      {
         this.§_-MI§ = param1;
      }
      
      public function §_-uF§(param1:§_-qd§) : void
      {
         var _loc2_:int = this.§_-Ki§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-Ki§.splice(_loc2_,1);
         }
      }
      
      public function §_-Te§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-Ki§ = this.§_-Ki§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-Nh§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-Ok§() : void
      {
         this.§_-Ki§ = [];
      }
      
      public function §_-QI§(param1:Function, param2:Number, ... rest) : §_-Ct§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-Ct§ = new §_-Ct§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-CR§(param1:Number) : void
      {
         var currentObject:§_-qd§ = null;
         var time:Number = param1;
         if(this.§_-MI§)
         {
            return;
         }
         this.§_-I§ += time;
         var objectCopy:Array = this.§_-Ki§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-CR§(time);
         }
         this.§_-Ki§ = this.§_-Ki§.filter(function(param1:§_-qd§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-aE§;
         });
      }
      
      public function get §_-aE§() : Boolean
      {
         return false;
      }
      
      public function get §_-0a§() : Number
      {
         return this.§_-I§;
      }
   }
}
