package §_-iA§
{
   import flash.display.DisplayObject;
   
   public class §_-B-§ implements §_-vS§
   {
       
      
      private var §_-xI§:Array;
      
      private var §_-e5§:Number;
      
      private var §_-Ak§:DisplayObject;
      
      private var §_-P3§:Boolean = false;
      
      public function §_-B-§()
      {
         super();
         this.§_-e5§ = 0;
         this.§_-xI§ = [];
      }
      
      public function add(param1:§_-vS§) : void
      {
         if(param1 != null && this.§_-xI§.indexOf(param1) == -1)
         {
            this.§_-xI§.push(param1);
         }
      }
      
      public function set §_-ej§(param1:Boolean) : void
      {
         this.§_-P3§ = param1;
      }
      
      public function §_-4g§(param1:§_-vS§) : void
      {
         var _loc2_:int = this.§_-xI§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-xI§.splice(_loc2_,1);
         }
      }
      
      public function §_-6K§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-xI§ = this.§_-xI§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-6-§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-c5§() : void
      {
         this.§_-xI§ = [];
      }
      
      public function §_-uc§(param1:Function, param2:Number, ... rest) : §_-Jb§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-Jb§ = new §_-Jb§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-An§(param1:Number) : void
      {
         var currentObject:§_-vS§ = null;
         var time:Number = param1;
         if(this.§_-P3§)
         {
            return;
         }
         this.§_-e5§ += time;
         var objectCopy:Array = this.§_-xI§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-An§(time);
         }
         this.§_-xI§ = this.§_-xI§.filter(function(param1:§_-vS§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-9e§;
         });
      }
      
      public function get §_-9e§() : Boolean
      {
         return false;
      }
      
      public function get §_-Tu§() : Number
      {
         return this.§_-e5§;
      }
   }
}
