package §7!j§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   
   public class §%"p§ extends §2$3§
   {
       
      
      private var §>!4§:§'0§;
      
      public function §%"p§(param1:String, param2:§'0§, param3:Number)
      {
         super(param1,param3);
         this.§>!4§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject, param2:Boolean = true) : DisplayObject
      {
         var _loc3_:Sprite = param1 as Sprite;
         if(!_loc3_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §[#%§.§ "o§(name,this.§>!4§,_loc3_);
      }
   }
}
