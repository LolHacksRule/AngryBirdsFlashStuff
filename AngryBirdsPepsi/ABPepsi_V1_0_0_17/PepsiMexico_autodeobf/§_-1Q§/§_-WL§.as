package §_-1Q§
{
   import flash.display.DisplayObject;
   
   public class §_-WL§ implements §_-G7§
   {
       
      
      private var §_-z-§:Array;
      
      private var §_-QF§:Number;
      
      private var §_-CI§:DisplayObject;
      
      private var §_-jL§:Boolean = false;
      
      public function §_-WL§()
      {
         super();
         this.§_-QF§ = 0;
         this.§_-z-§ = [];
      }
      
      public function add(param1:§_-G7§) : void
      {
         if(param1 != null && this.§_-z-§.indexOf(param1) == -1)
         {
            this.§_-z-§.push(param1);
         }
      }
      
      public function set §_-ra§(param1:Boolean) : void
      {
         this.§_-jL§ = param1;
      }
      
      public function §_-TM§(param1:§_-G7§) : void
      {
         var _loc2_:int = this.§_-z-§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-z-§.splice(_loc2_,1);
         }
      }
      
      public function §_-Aa§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-z-§ = this.§_-z-§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-kt§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-Y0§() : void
      {
         this.§_-z-§ = [];
      }
      
      public function §_-F-§(param1:Function, param2:Number, ... rest) : §_-ib§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-ib§ = new §_-ib§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var currentObject:§_-G7§ = null;
         var time:Number = param1;
         if(this.§_-jL§)
         {
            return;
         }
         this.§_-QF§ += time;
         if(this.§_-z-§.length == 0)
         {
            return;
         }
         var objectCopy:Array = this.§_-z-§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-IE§(time);
         }
         this.§_-z-§ = this.§_-z-§.filter(function(param1:§_-G7§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-ZY§;
         });
      }
      
      public function get §_-ZY§() : Boolean
      {
         return false;
      }
      
      public function get §_-vY§() : Number
      {
         return this.§_-QF§;
      }
   }
}
