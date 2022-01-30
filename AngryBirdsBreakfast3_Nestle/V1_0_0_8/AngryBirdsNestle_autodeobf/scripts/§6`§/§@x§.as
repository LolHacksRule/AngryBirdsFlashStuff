package §6`§
{
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   
   public class §@x§ extends §-!c§
   {
       
      
      private var §1!5§:§2a§;
      
      private var §]"3§:String;
      
      public function §@x§(param1:String, param2:§2a§, param3:Number)
      {
         super(param3);
         this.§]"3§ = param1;
         this.§1!5§ = param2;
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
         return §[!h§.§!"7§(this.§]"3§,this.§1!5§,_loc2_);
      }
   }
}
