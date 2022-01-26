package §_-9z§
{
   public class b2Vec3
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function b2Vec3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function §_-TJ§() : void
      {
         this.x = this.y = this.z = 0;
      }
      
      public function Set(param1:Number, param2:Number, param3:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function SetV(param1:b2Vec3) : void
      {
         this.x = param1.x;
         this.y = param1.y;
         this.z = param1.z;
      }
      
      public function §_-Hv§() : b2Vec3
      {
         return new b2Vec3(-this.x,-this.y,-this.z);
      }
      
      public function §_-6f§() : void
      {
         this.x = -this.x;
         this.y = -this.y;
         this.z = -this.z;
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function §_-3a§(param1:b2Vec3) : void
      {
         this.x += param1.x;
         this.y += param1.y;
         this.z += param1.z;
      }
      
      public function §_-8M§(param1:b2Vec3) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
         this.z -= param1.z;
      }
      
      public function §_-5L§(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
         this.z *= param1;
      }
   }
}
