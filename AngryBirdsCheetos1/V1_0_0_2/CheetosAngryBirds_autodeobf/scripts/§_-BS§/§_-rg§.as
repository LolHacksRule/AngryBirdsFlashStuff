package §_-BS§
{
   import flash.display.DisplayObject;
   
   public class §_-rg§ implements §_-De§
   {
       
      
      private var §_-FB§:Array;
      
      private var §_-Ui§:Number;
      
      private var §_-N6§:DisplayObject;
      
      private var §_-IG§:Boolean = false;
      
      private var §_-fT§:Number = 1.0;
      
      public function §_-rg§()
      {
         super();
         this.§_-Ui§ = 0;
         this.§_-FB§ = [];
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-fT§ = param1;
      }
      
      public function add(param1:§_-De§) : void
      {
         if(param1 != null && this.§_-FB§.indexOf(param1) == -1)
         {
            this.§_-FB§.push(param1);
         }
      }
      
      public function set §_-Zn§(param1:Boolean) : void
      {
         this.§_-IG§ = param1;
      }
      
      public function §_-8u§(param1:§_-De§) : void
      {
         var _loc2_:int = this.§_-FB§.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.§_-FB§.splice(_loc2_,1);
         }
      }
      
      public function §_-l4§(param1:Object) : void
      {
         var target:Object = param1;
         if(target == null)
         {
            return;
         }
         this.§_-FB§ = this.§_-FB§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-mR§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-Pn§() : void
      {
         this.§_-FB§ = [];
      }
      
      public function §_-iG§(param1:Function, param2:Number, ... rest) : §_-Ps§
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc4_:§_-Ps§ = new §_-Ps§(param1,param2,rest);
         this.add(_loc4_);
         return _loc4_;
      }
      
      public function §_-cj§(param1:Number) : void
      {
         var currentObject:§_-De§ = null;
         var time:Number = param1;
         if(this.§_-IG§)
         {
            return;
         }
         time *= this.§_-fT§;
         this.§_-Ui§ += time;
         if(this.§_-FB§.length == 0)
         {
            return;
         }
         var objectCopy:Array = this.§_-FB§.concat();
         for each(currentObject in objectCopy)
         {
            currentObject.§_-cj§(time);
         }
         this.§_-FB§ = this.§_-FB§.filter(function(param1:§_-De§, param2:int, param3:Array):Boolean
         {
            return !param1.§_-ej§;
         });
      }
      
      public function get §_-ej§() : Boolean
      {
         return false;
      }
      
      public function get §_-UP§() : Number
      {
         return this.§_-Ui§;
      }
   }
}
