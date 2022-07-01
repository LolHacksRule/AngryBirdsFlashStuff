package §2`§
{
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   
   public class §5]§ extends §=!"§
   {
       
      
      private var §,%§:§%!!§;
      
      private var §5!7§:String;
      
      public function §5]§(param1:String, param2:§%!!§, param3:Number)
      {
         super(param3);
         this.§5!7§ = param1;
         this.§,%§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §6y§.§9![§(this.§5!7§,this.§,%§,_loc2_);
      }
   }
}
