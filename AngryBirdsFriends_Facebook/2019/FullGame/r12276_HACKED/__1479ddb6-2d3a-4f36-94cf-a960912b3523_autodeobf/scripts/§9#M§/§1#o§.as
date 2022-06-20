package §9#M§
{
   import §#Z§.DisplayObject;
   
   public class §1#o§ implements §,#I§
   {
       
      
      private var §-#3§:String;
      
      private var §6#B§:Number;
      
      public function §1#o§(param1:String, param2:Number)
      {
         super();
         this.§-#3§ = param1;
         this.§6#B§ = param2;
      }
      
      public function get endTimeMilliSeconds() : Number
      {
         return this.§6#B§;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function updateDisplayObject(param1:DisplayObject, param2:Boolean = true) : DisplayObject
      {
         return null;
      }
      
      public function flipAnimation(param1:Boolean) : void
      {
      }
   }
}
