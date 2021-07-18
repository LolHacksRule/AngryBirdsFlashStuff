package §+!a§
{
   public class §[C§
   {
       
      
      public var count:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var w:Number;
      
      public var h:Number;
      
      public var velX:Number;
      
      public var velY:Number;
      
      public var variation:Number;
      
      public var randomRotation:Boolean;
      
      public var §'S§:Vector.<String>;
      
      public function §[C§(param1:Array)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         if(_loc6_ || param1)
         {
            super();
            if(!(_loc5_ && this))
            {
               this.§'S§ = new Vector.<String>();
            }
         }
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               this.§'S§.push(_loc2_);
            }
         }
      }
   }
}
