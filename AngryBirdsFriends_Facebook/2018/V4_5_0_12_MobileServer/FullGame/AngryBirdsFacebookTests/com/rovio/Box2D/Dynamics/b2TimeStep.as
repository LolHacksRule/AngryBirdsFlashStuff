package com.rovio.Box2D.Dynamics
{
   public class b2TimeStep
   {
       
      
      public var dt:Number;
      
      public var inv_dt:Number;
      
      public var dtRatio:Number;
      
      public var velocityIterations:int;
      
      public var positionIterations:int;
      
      public var warmStarting:Boolean;
      
      public function b2TimeStep()
      {
         super();
      }
      
      public function Set(step:b2TimeStep) : void
      {
         this.dt = step.dt;
         this.inv_dt = step.inv_dt;
         this.positionIterations = step.positionIterations;
         this.velocityIterations = step.velocityIterations;
         this.warmStarting = step.warmStarting;
      }
   }
}
